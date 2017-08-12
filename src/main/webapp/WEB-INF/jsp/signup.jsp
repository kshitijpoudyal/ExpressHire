<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Title</title>
</head>
<body>
<h1>Mohammad Ahmad</h1>
<div class="container">
    <form action="/artist/add" method="post" class="form-horizontal">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h2 class="panel-title">Add New Artist</h2>
            </div>

            <div class="panel-body">

                <div class="form-group">
                    <label for="fullName" class="col-sm-2">Full Name:</label>
                    <div class="col-sm-8">
                        <input class="form-control" id="fullName" type="text" placeholder="Artist Full Name"/>
                    </div>
                </div>

                <div class="form-group">
                    <label for="placeOfBirth" class="col-sm-2"> Place Of Birth:</label>
                    <div class="col-sm-8">
                        <input id="placeOfBirth" class="form-control" type="text" placeholder="Place Of Birth"/>
                    </div>

                </div>

                <div class="form-group">

                    <label for="biography" class="col-sm-2"> Biography:</label>
                    <div class="col-sm-8">
                        <textarea rows="7" id="biography" class="form-control" ></textarea>
                    </div>

                </div>

                <div class="form-group">
                    <label class="col-sm-2">Photo</label>
                    <div class="col-sm-8">
                        <input type="file"/>
                    </div>
                </div>
                <div class="col-sm-2">
                    <input type="submit" class="btn btn-lg btn-primary btn-block" value="Add New Artist"/>
                </div>


            </div>

        </div>

    </form>
</div>


</body>
</html>