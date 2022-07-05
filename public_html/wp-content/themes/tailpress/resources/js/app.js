// Navigation toggle
window.addEventListener('load', function () {
      let main_navigation = document.querySelector('#primary-menu');
      document.querySelector('#primary-menu-toggle').addEventListener('click', function (e) {
            e.preventDefault();
            main_navigation.classList.toggle('hidden');
      });
});

// Custom Cursor
window.addEventListener('load', function () {
      const cursor = document.querySelector(".cursor");

      window.addEventListener("mousemove", (e) => {
            cursor.style.left = e.clientX + "px";
            cursor.style.top = e.clientY + "px";
            cursor.setAttribute("data-fromTop", cursor.offsetTop - scrollY);
            console.log('Hello');
      });
});