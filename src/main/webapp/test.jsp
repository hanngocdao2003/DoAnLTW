<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    .hero {
      width: 100%;
      height: 100vh;
      background-color: antiquewhite;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .card {
      width: 400px;
      background-color: aqua;
      padding: 40px;
      border-radius: 5px;
      text-align: center;
      color: brown;
    }

    .card h1 {
      font-weight: 500;
    }

    .card img {
      width: 180px;
      height: 180px;
      border-radius: 50%;
      margin-top: 40px;
      margin-bottom: 30px;
    }

    label {
      display: block;
      width: 200px;
      background: #e3362c;
      color: white;
      padding: 12px;
      margin: 10px auto;
      border-radius: 5px;
      cursor: pointer;
    }

    input {
      display: none;
    }
  </style>
</head>

<body>
  <div class="hero">
    <div class="card">
      <h1>Phạm Huỳnh Huyền Trân</h1>
      <p>_tara.ht_</p>
      <img src="View/images/profile.png" id="pro-pic">
      <label for="input-file"></label>
      <input type="file" accept="image/*" id="input-file">
    </div>
  </div>
  <script>
    let productPic = document.getElementById("pro-pic");
    let inputFile = document.getElementById("input-file");
    inputFile.onchange = function () {
      productPic.src = URL.createObjectURL(inputFile.files[0])
    }
  </script>
</body>

</html>