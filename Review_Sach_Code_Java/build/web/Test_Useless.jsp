<%-- 
    Document   : Test
    Created on : Jun 28, 2023, 9:44:38 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        .modal {
            display: none;
            position: fixed;
            z-index: 999;
            padding-top: 10%;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.9);
        }

        .modal-content {
            margin: auto;
            display: block;
            width: 80%;
            max-width: 700px;
        }

        .modal-content img {
            width: 100%;
            height: auto;
        }

        .close {
            position: absolute;
            top: 15px;
            right: 35px;
            color: #f1f1f1;
            font-size: 40px;
            font-weight: bold;
            transition: 0.3s;
        }

        .close:hover,
        .close:focus {
            color: #bbb;
            text-decoration: none;
            cursor: pointer;
        }

        .prev,
        .next {
            position: absolute;
            top: 50%;
            font-size: 30px;
            font-weight: bold;
            padding: 10px;
            background-color: rgba(255, 255, 255, 0.3);
            color: #fff;
            cursor: pointer;
            transition: 0.3s;
        }

        .prev:hover,
        .next:hover {
            background-color: rgba(255, 255, 255, 0.5);
        }

        .prev {
            left: 10px;
        }

        .next {
            right: 10px;
        }

        .alt-text {
            margin-top: 10px;
            color: #fff;
            text-align: center;
        }
    </style>
</head>
<body>
    <img class="img-fluid" src="img/book/image1.jpg" alt="Quyen 1" onclick="displayModal('img/book/image1.jpg', 'Quyen 1', 0)">
    <img class="img-fluid" src="img/book/image2.jpg" alt="Quyen 2" onclick="displayModal('img/book/image2.jpg', 'Quyen 2', 1)">
    <img class="img-fluid" src="img/book/image3.jpg" alt="Quyen 3" onclick="displayModal('img/book/image3.jpg', 'Quyen 3', 2)">
    <img class="img-fluid" src="img/book/image4.jpg" alt="Quyen 4" onclick="displayModal('img/book/image4.jpg', 'Quyen 4', 3)">

    <div id="modal" class="modal">
        <span class="close" onclick="closeModal()">&times;</span>
        <div class="modal-content">
            <img id="modal-image" src="">
            <a class="prev" onclick="changeImage(-1)">&#10094;</a>
            <a class="next" onclick="changeImage(1)">&#10095;</a>
            <div id="modal-alt" class="alt-text"></div>
        </div>
    </div>

    <script>
        var images = [
            'img/book/image1.jpg',
            'img/book/image2.jpg',
            'img/book/image3.jpg',
            'img/book/image4.jpg'
        ];

        var altTexts = [
            'Quyen 1',
            'Quyen 2',
            'Quyen 3',
            'Quyen 4'
        ];

        var currentImageIndex = 0;

        function displayModal(imageSrc, altText, index) {
            var modal = document.getElementById("modal");
            var modalImage = document.getElementById("modal-image");
            var modalAlt = document.getElementById("modal-alt");
            modal.style.display = "block";
            modalImage.src = imageSrc;
            modalAlt.textContent = altText;
            currentImageIndex = index;
        }

        function closeModal() {
            var modal = document.getElementById("modal");
            modal.style.display = "none";
        }

        function changeImage(direction) {
            currentImageIndex += direction;

            if (currentImageIndex < 0) {
                currentImageIndex = images.length - 1;
            } else if (currentImageIndex >= images.length) {
                currentImageIndex = 0;
            }

            var modalImage = document.getElementById("modal-image");
            var modalAlt = document.getElementById("modal-alt");
            modalImage.src = images[currentImageIndex];
            modalAlt.textContent = altTexts[currentImageIndex];
        }
    </script>
</body>
</html>



