const cursorDot = document.querySelector("[data-cursor-dot]");
const cursorOutline = document.querySelector("[data-cursor-outline]");
const interactiveElements = document.querySelectorAll("nav ul li, .downloadCVButton, button");

window.addEventListener("mousemove", (e) => {
    const posX = e.clientX;
    const posY = e.clientY;

    cursorDot.style.transform = `translate(${posX - 4}px, ${posY - 4}px)`;

    cursorOutline.animate(
        { transform: `translate(${posX - 20}px, ${posY - 20}px)` },
        { duration: 300, fill: "forwards", easing: "ease-out" }
    );
});