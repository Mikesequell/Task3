<%@ page import="servlets.MainPageServlet" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Just Monika</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
      crossorigin="anonymous"
    />
    <link rel="shortcut icon" href="monika.png" type="image/png" />
    <script>
      function showAlert() {
        let number = Math.random() * 10;
        if (number <= 4) {
          alert(
            "Hey, have you ever heard of the term 'yandere'? It's a personality type that means someone is so obsessed with you that they'll do absolutely anything to be with you."
          );
        } else if (number > 5) {
          alert(
            "There's a really popular character type called 'tsundere'... It's someone who tries to hide their feelings by being mean and fussy, or trying to act tough."
          );
        }
      }
    </script>
  </head>
  <body>
    <div class="bg-dark bg-gradient py-3">
      <div class="container text-center">
        <div class="row">
          <div class="col-lg-6 mx-auto">
            <img class="img-thumbnail" src="img.png" alt="Monika" />
            <h1 class="text-light my-3"> Hej, <%= session.getAttribute("name") %></h1>
            <h1 class="text-light my-3">My name is Monika</h1>
            <!-- <p class="text-light">Just Monika</p> -->
            <button
              type="button"
              class="btn btn-light my-4"
              onclick="showAlert()"
            >
              Just Monika
            </button>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
