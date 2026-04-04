// Smooth scroll behavior for navigation links
document.querySelectorAll('.nav-link').forEach(link => {
    link.addEventListener('click', function(e) {
        e.preventDefault();
        const targetId = this.getAttribute('href');
        const targetSection = document.querySelector(targetId);
        
        if (targetSection) {
            targetSection.scrollIntoView({ behavior: 'smooth' });
            
            // Update active link
            document.querySelectorAll('.nav-link').forEach(l => l.classList.remove('active'));
            this.classList.add('active');
            
            // Close mobile menu if open
            document.getElementById('navMenu').classList.remove('active');
        }
    });
});

// Mobile menu toggle
const mobileToggle = document.getElementById('mobileToggle');
const navMenu = document.getElementById('navMenu');

mobileToggle.addEventListener('click', () => {
    navMenu.classList.toggle('active');
    const icon = mobileToggle.querySelector('i');
    icon.classList.toggle('fa-bars');
    icon.classList.toggle('fa-times');
});

// Navbar scroll effect
let lastScroll = 0;
const navbar = document.getElementById('navbar');

window.addEventListener('scroll', () => {
    const currentScroll = window.pageYOffset;
    
    if (currentScroll > 100) {
        navbar.classList.add('scrolled');
    } else {
        navbar.classList.remove('scrolled');
    }
    
    lastScroll = currentScroll;
});

// Animated counter for statistics
function animateCounter(element, target, duration = 2000) {
    let start = 0;
    const increment = target / (duration / 16);
    
    const timer = setInterval(() => {
        start += increment;
        if (start >= target) {
            element.textContent = target.toLocaleString('id-ID');
            clearInterval(timer);
        } else {
            element.textContent = Math.floor(start).toLocaleString('id-ID');
        }
    }, 16);
}

// Trigger counter animation when stats section is visible
const observerOptions = {
    threshold: 0.5,
    rootMargin: '0px'
};

const statsObserver = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            const statNumbers = entry.target.querySelectorAll('.stat-number');
            statNumbers.forEach(stat => {
                const target = parseInt(stat.getAttribute('data-target'));
                animateCounter(stat, target);
            });
            statsObserver.unobserve(entry.target);
        }
    });
}, observerOptions);

const heroStats = document.querySelector('.hero-stats');
if (heroStats) {
    statsObserver.observe(heroStats);
}

// Property filter functionality
const filterBtns = document.querySelectorAll('.filter-btn');
const propertyCards = document.querySelectorAll('.property-card');

filterBtns.forEach(btn => {
    btn.addEventListener('click', () => {
        // Update active button
        filterBtns.forEach(b => b.classList.remove('active'));
        btn.classList.add('active');
        
        const filter = btn.getAttribute('data-filter');
        
        propertyCards.forEach(card => {
            const category = card.getAttribute('data-category');
            
            if (filter === 'all' || category === filter) {
                card.style.display = 'block';
                card.style.animation = 'fadeIn 0.5s ease';
            } else {
                card.style.display = 'none';
            }
        });
    });
});

// Wishlist functionality
const wishlistBtns = document.querySelectorAll('.wishlist-btn');

wishlistBtns.forEach(btn => {
    btn.addEventListener('click', (e) => {
        e.stopPropagation();
        btn.classList.toggle('active');
        
        // Add bounce animation
        btn.style.animation = 'none';
        setTimeout(() => {
            btn.style.animation = 'pulse 0.3s ease';
        }, 10);
    });
});

// Property card click to show details (simulation)
propertyCards.forEach(card => {
    const bookBtn = card.querySelector('.btn-book');
    
    bookBtn.addEventListener('click', (e) => {
        e.stopPropagation();
        const propertyName = card.querySelector('h3').textContent;
        showNotification(`Memproses pemesanan untuk ${propertyName}...`);
    });
});

// Testimonial slider
let currentSlide = 0;
const testimonialCards = document.querySelectorAll('.testimonial-card');
const sliderDots = document.querySelector('.slider-dots');
const prevBtn = document.querySelector('.slider-btn.prev');
const nextBtn = document.querySelector('.slider-btn.next');

// Create dots
testimonialCards.forEach((_, index) => {
    const dot = document.createElement('div');
    dot.className = 'slider-dot';
    dot.style.width = '10px';
    dot.style.height = '10px';
    dot.style.borderRadius = '50%';
    dot.style.background = index === 0 ? 'var(--primary-color)' : '#ddd';
    dot.style.cursor = 'pointer';
    dot.style.transition = 'all 0.3s ease';
    
    dot.addEventListener('click', () => goToSlide(index));
    sliderDots.appendChild(dot);
});

const dots = document.querySelectorAll('.slider-dot');

function updateSlider() {
    dots.forEach((dot, index) => {
        dot.style.background = index === currentSlide ? 'var(--primary-color)' : '#ddd';
        dot.style.transform = index === currentSlide ? 'scale(1.2)' : 'scale(1)';
    });
}

function goToSlide(index) {
    currentSlide = index;
    updateSlider();
}

prevBtn.addEventListener('click', () => {
    currentSlide = (currentSlide - 1 + testimonialCards.length) % testimonialCards.length;
    updateSlider();
});

nextBtn.addEventListener('click', () => {
    currentSlide = (currentSlide + 1) % testimonialCards.length;
    updateSlider();
});

// Auto slide testimonials
setInterval(() => {
    currentSlide = (currentSlide + 1) % testimonialCards.length;
    updateSlider();
}, 5000);

// Contact form submission
const contactForm = document.getElementById('contactForm');

contactForm.addEventListener('submit', (e) => {
    e.preventDefault();
    
    // Get form data
    const formData = new FormData(contactForm);
    const data = Object.fromEntries(formData);
    
    // Show loading state
    const submitBtn = contactForm.querySelector('button[type="submit"]');
    const originalText = submitBtn.innerHTML;
    submitBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Mengirim...';
    submitBtn.disabled = true;
    
    // Simulate form submission
    setTimeout(() => {
        submitBtn.innerHTML = '<i class="fas fa-check"></i> Terkirim!';
        submitBtn.style.background = '#4caf50';
        
        showNotification('Pesan Anda telah terkirim! Kami akan segera menghubungi Anda.');
        
        setTimeout(() => {
            contactForm.reset();
            submitBtn.innerHTML = originalText;
            submitBtn.style.background = '';
            submitBtn.disabled = false;
        }, 3000);
    }, 2000);
});

// Back to top button
const backToTopBtn = document.getElementById('backToTop');

window.addEventListener('scroll', () => {
    if (window.pageYOffset > 300) {
        backToTopBtn.classList.add('show');
    } else {
        backToTopBtn.classList.remove('show');
    }
});

backToTopBtn.addEventListener('click', () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
});

// Parallax effect for hero section
window.addEventListener('scroll', () => {
    const scrolled = window.pageYOffset;
    const heroBackground = document.querySelector('.hero-background');
    
    if (heroBackground && scrolled < window.innerHeight) {
        heroBackground.style.transform = `translateY(${scrolled * 0.5}px)`;
    }
});

// Intersection Observer for animations
const animationObserver = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.style.opacity = '1';
            entry.target.style.transform = 'translateY(0)';
        }
    });
}, {
    threshold: 0.1,
    rootMargin: '50px'
});

// Observe elements for animation
document.querySelectorAll('.feature-card, .property-card, .testimonial-card').forEach(el => {
    el.style.opacity = '0';
    el.style.transform = 'translateY(30px)';
    el.style.transition = 'all 0.6s ease';
    animationObserver.observe(el);
});

// Search box interaction
const searchInputs = document.querySelectorAll('.search-input-wrapper input');

searchInputs.forEach(input => {
    input.addEventListener('focus', function() {
        this.parentElement.parentElement.style.transform = 'scale(1.02)';
        this.parentElement.parentElement.style.transition = 'transform 0.3s ease';
    });
    
    input.addEventListener('blur', function() {
        this.parentElement.parentElement.style.transform = 'scale(1)';
    });
});

// Notification system
function showNotification(message) {
    const notification = document.createElement('div');
    notification.style.cssText = `
        position: fixed;
        top: 100px;
        right: 30px;
        background: white;
        padding: 20px 30px;
        border-radius: 12px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        z-index: 10000;
        display: flex;
        align-items: center;
        gap: 15px;
        animation: slideInRight 0.5s ease;
    `;
    
    notification.innerHTML = `
        <i class="fas fa-check-circle" style="color: #4caf50; font-size: 24px;"></i>
        <span style="color: #333; font-weight: 500;">${message}</span>
    `;
    
    document.body.appendChild(notification);
    
    setTimeout(() => {
        notification.style.animation = 'slideOutRight 0.5s ease';
        setTimeout(() => {
            document.body.removeChild(notification);
        }, 500);
    }, 3000);
}

// Add slide out animation
const style = document.createElement('style');
style.textContent = `
    @keyframes slideOutRight {
        from {
            opacity: 1;
            transform: translateX(0);
        }
        to {
            opacity: 0;
            transform: translateX(400px);
        }
    }
`;
document.head.appendChild(style);

// Hero buttons interaction
const heroBtns = document.querySelectorAll('.hero-buttons .btn');

heroBtns.forEach(btn => {
    btn.addEventListener('click', function() {
        if (this.querySelector('span').textContent === 'Jelajahi Sekarang') {
            document.querySelector('#properties').scrollIntoView({ behavior: 'smooth' });
        } else if (this.querySelector('span').textContent === 'Lihat Video') {
            showNotification('Fitur video tour akan segera hadir!');
        }
    });
});

// CTA buttons
const ctaBtns = document.querySelectorAll('.cta-buttons .btn');

ctaBtns.forEach(btn => {
    btn.addEventListener('click', function() {
        const btnText = this.querySelector('span').textContent;
        
        if (btnText === 'Daftar Sekarang') {
            showNotification('Halaman pendaftaran akan segera dibuka!');
        } else if (btnText === 'Hubungi Kami') {
            document.querySelector('#contact').scrollIntoView({ behavior: 'smooth' });
        }
    });
});

// Load more properties
const loadMoreBtn = document.querySelector('.load-more .btn');

if (loadMoreBtn) {
    loadMoreBtn.addEventListener('click', function() {
        this.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Memuat...';
        
        setTimeout(() => {
            showNotification('Semua properti telah ditampilkan!');
            this.innerHTML = 'Lihat Lebih Banyak';
        }, 1500);
    });
}

// WhatsApp float button
const whatsappFloat = document.querySelector('.whatsapp-float');

whatsappFloat.addEventListener('click', (e) => {
    e.preventDefault();
    const message = encodeURIComponent('Halo! Saya tertarik dengan villa di VillaKu.');
    const phoneNumber = '6281234567890'; // Change this to actual number
    window.open(`https://wa.me/${phoneNumber}?text=${message}`, '_blank');
});

// Add hover effect to property images
propertyCards.forEach(card => {
    const img = card.querySelector('.property-image img');
    
    card.addEventListener('mouseenter', () => {
        img.style.filter = 'brightness(1.1)';
    });
    
    card.addEventListener('mouseleave', () => {
        img.style.filter = 'brightness(1)';
    });
});

// Newsletter form
const newsletterForm = document.querySelector('.newsletter-form');

if (newsletterForm) {
    const newsletterBtn = newsletterForm.querySelector('button');
    const newsletterInput = newsletterForm.querySelector('input');
    
    newsletterBtn.addEventListener('click', (e) => {
        e.preventDefault();
        
        if (newsletterInput.value) {
            newsletterBtn.innerHTML = '<i class="fas fa-check"></i>';
            newsletterBtn.style.background = '#4caf50';
            
            showNotification('Terima kasih! Anda telah berlangganan newsletter kami.');
            
            setTimeout(() => {
                newsletterInput.value = '';
                newsletterBtn.innerHTML = '<i class="fas fa-paper-plane"></i>';
                newsletterBtn.style.background = '';
            }, 2000);
        }
    });
}

// Social media links
const socialLinks = document.querySelectorAll('.social-links a');

socialLinks.forEach(link => {
    link.addEventListener('click', (e) => {
        e.preventDefault();
        const platform = link.querySelector('i').classList[1].replace('fa-', '');
        showNotification(`Membuka ${platform.charAt(0).toUpperCase() + platform.slice(1)}...`);
    });
});

// Dynamic year in footer
const currentYear = new Date().getFullYear();
const footerBottom = document.querySelector('.footer-bottom p');
if (footerBottom) {
    footerBottom.innerHTML = footerBottom.innerHTML.replace('2026', currentYear);
}

// Add loading animation
window.addEventListener('load', () => {
    document.body.style.opacity = '0';
    setTimeout(() => {
        document.body.style.transition = 'opacity 0.5s ease';
        document.body.style.opacity = '1';
    }, 100);
});

// Easter egg: Konami code
let konamiCode = [];
const konamiPattern = ['ArrowUp', 'ArrowUp', 'ArrowDown', 'ArrowDown', 'ArrowLeft', 'ArrowRight', 'ArrowLeft', 'ArrowRight', 'b', 'a'];

document.addEventListener('keydown', (e) => {
    konamiCode.push(e.key);
    konamiCode = konamiCode.slice(-10);
    
    if (konamiCode.join(',') === konamiPattern.join(',')) {
        document.body.style.animation = 'rainbow 2s linear infinite';
        showNotification('🎉 Kode rahasia ditemukan! Selamat!');
        
        setTimeout(() => {
            document.body.style.animation = '';
        }, 5000);
    }
});

// Add rainbow animation
const rainbowStyle = document.createElement('style');
rainbowStyle.textContent = `
    @keyframes rainbow {
        0% { filter: hue-rotate(0deg); }
        100% { filter: hue-rotate(360deg); }
    }
`;
document.head.appendChild(rainbowStyle);

console.log('%c🏠 VillaKu - Temukan Villa Impian Anda!', 'font-size: 20px; color: #FF6B6B; font-weight: bold;');
console.log('%cSelamat datang di VillaKu! Jelajahi properti terbaik kami.', 'font-size: 14px; color: #4ECDC4;');