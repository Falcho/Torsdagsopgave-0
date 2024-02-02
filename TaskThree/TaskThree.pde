String address;
int result;
float divResult;
String message;

void setup() {
  address = "Firskovvej 18, 2800 Lyngby";
  result = 9+15;
  divResult =65/11;
  message = "Det er sjovt at kode";

  println("Adresse: "+address);
  println("Tid brugt: "+result+" minutter");
  println("med en hastighed på "+divResult+"km/t");
  println(message+" hvis du har styr på det");

  address ="www.google.dk";
  result=78+22;
  divResult=110/6.5;
  message="man er god til noget";

  println("Adresse: "+address);
  println("Tid brugt: "+result+" minutter");
  println("med en hastighed på "+divResult+"km/t");
  println(message+" hvis du har styr på det");

  result++;
  divResult++;
  println(result+" "+divResult);

  result+=3;
  divResult+=3;
  println(result+" "+divResult);

  result--;
  divResult--;
  println(result+" "+divResult);
}
