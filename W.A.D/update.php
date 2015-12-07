<?php
            

$title = $_POST["title"];
$genre = $_POST["genre"];
$multi = $_POST["multiplayer"];
$developer = $_POST["developer"];
$publisher = $_POST["publisher"];

if (file_exists('yourgame.xml')) {
    //loads the xml and returns a simplexml object
    $xml = simplexml_load_file('yourgame.xml');

    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
    //displaying the element in proper format
    //echo '<u><b>This is the xml code from yourgame.xml:</b></u>
     //<br /><br />
    // <pre>' . htmlentities($xmlFormat, ENT_COMPAT | ENT_HTML401, "ISO-8859-1") . '</pre><br /><br />';

    //adding new child to the xml
    $newChild = $xml->addChild('game');
    
    $newChild->addChild('title', $title);
    $newChild->addChild('genre', $genre);
    $newChild->addChild('multiplayer', $multi);
    $newChild->addChild('developer', $developer);
    $newChild->addChild('publisher', $publisher);
  
    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
    //displaying the element in proper format
    echo '<u><b>This is the xml code from test2.xml with new elements added:</b></u>
     <br /><br />
    <pre>' . htmlentities($xmlFormat, ENT_COMPAT | ENT_HTML401, "ISO-8859-1") . '</pre>';

    //changing the nodes values
    //in this case we are changing the value 
    //of all children called <name>
    //foreach ($xml->children() as $child)
    //    $child->genre = "CHANGED";
    //displaying the element in proper format
    
} else {
    exit('Failed to open yourgame.xml.');
}
    file_put_contents('yourgame.xml', $xml->asXML());


?>
            