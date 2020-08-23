import 'package:flutter/material.dart';

class Constants {
  static String appName = "Forge Note";
  static String appPackage = "com.sachi.classic_flutter_news";

  //OTP Setup
  static String msg91AuthKey = "264945AeCxvjPPygN5c756de7";

  static String appAbout =
      "<h3>Rester à jour est essentiel dans notre monde en évolution rapide.</h3>"
      "Le monde évolue à un rythme effréné que parfois une technologie peut devenir obsolète sans arriver à maturité.Le dicton « L’unique constante est le changement » prend tout son sens lorsqu’on remarque à quel point le numérique bouleverse nos habitudes, nos mœurs et impacte considérablement notre mode de vie. Si on ne s’y adapte pas on est condamné à disparaitre."
      "<p>C’est dans cette optique que <strong>forgenote</strong> veut vous aider à mieux maitriser les technologies émergentes qui impactent nos activités quotidiennes et nos pratiques. Cette application se veut être un glossaire numérique qui va vous aider à mieux articuler vos choix, à vous doter d’outils pour mieux prendre des décisions stratégiques et opérationnelles. Que vous soyez un créatif en herbe qui aimerait mieux structurer ces idées, ou un entrepreneur qui veut seulement savoir comment calculer le rendement d’un investissement, vous trouverez des articles clés qui couvriront des domaines d’actualités et beaucoup plus encore .</p>";

  static String appPrivacy = "<h3>Politique de Confidentialité</h3>"
      "Propriétaire et Responsable du traitement, "
      "<strong>Types de Données collectées</strong> </br> Figurent parmi les types de Données personnelles que cette Application collecte directement ou en recourant à des tiers : prénom; nom de famille; numéro de téléphone."
      "<p>Les détails complets sur chaque type de Données personnelles collectées sont fournis dans les parties consacrées à la présente politique de confidentialité ou par des textes d’explication spécifiques publiés avant la collecte des Données.Les Données personnelles peuvent être librement fournies par l’Utilisateur, ou, en cas de Données d’utilisation, collectées automatiquement lorsque vous utilisez cette Application.Sauf indication contraire, toutes les Données demandées par cette Application sont obligatoires et leur absence peut rendre impossible la fourniture des Services par cette Application. Dans le cas où cette Application précise que certaines Données ne sont pas obligatoires, les Utilisateurs sont libres de ne pas les communiquer sans entraîner de conséquences sur la disponibilité ou le fonctionnement du Service.Les Utilisateurs qui auraient des doutes sur les Données personnelles obligatoires sont invités à contacter le Propriétaire.Toute utilisation des Cookies – ou d’autres outils de suivi – par cette Application ou par les propriétaires de services tiers utilisés par cette Application vise à fournir le Service demandé par l’Utilisateur, outre les autres finalités décrites dans le présent document et dans la Politique relative aux cookies, si elle est disponible.Les Utilisateurs sont responsables de toute Donnée personnelle de tiers obtenue, publiée ou communiquée par l’intermédiaire de cette Application et confirment qu’ils obtiennent le consentement du tiers pour fournir les Données au Propriétaire.</p>";

  static Color lightPrimary = Colors.white;
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Color(0xff0000ff);
  static Color darkAccent = Color(0xff0000ff);
  static Color lightBG = Color(0xFFFAFAFA);
  static Color darkBG = Color(0xFF2C2C2C);

  static ThemeData lightTheme = ThemeData(
    fontFamily: "Poppins",
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          fontFamily: "Poppins",
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          fontFamily: "Poppins",
          color: lightBG,
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );

  static List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }
}
