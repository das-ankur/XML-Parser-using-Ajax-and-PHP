<?php
//import.php
sleep(3);
$output = '';

if(isset($_FILES['file']['name']) &&  $_FILES['file']['name'] != '')
{
 $valid_extension = array('xml');
 $file_data = explode('.', $_FILES['file']['name']);
 $file_extension = end($file_data);
 if(in_array($file_extension, $valid_extension))
 {
  $data = simplexml_load_file($_FILES['file']['tmp_name']);
  $connect = new PDO('mysql:host=localhost;dbname=exam','root', '');
  $query = "
  INSERT INTO books
   (id, author, title, genre, price, publish_date, description) 
   VALUES(:id, :author, :title, :price, :genre, :publish_date, :description);
  ";
  $statement = $connect->prepare($query);
  for($i = 0; $i < count($data); $i++)
  {
   $statement->execute(
    array(
     ':id'   => $data->book[$i]->attributes()->id,
     ':author'   => $data->book[$i]->author,
     ':title'  => $data->book[$i]->title,
     ':genre'  => $data->book[$i]->genre,
     ':price' => $data->book[$i]->price,
     ':publish_date'   => $data->book[$i]->publish_date,
     ':description'   => $data->book[$i]->description
    )
   );

  }
  $result = $statement->fetchAll();
  if(isset($result))
  {
   $output = '<div class="alert alert-success">Import Data Done</div>';
  }
 }
 else
 {
  $output = '<div class="alert alert-warning">Invalid File</div>';
 }
}
else
{
 $output = '<div class="alert alert-warning">Please Select XML File</div>';
}

echo $output;

?>