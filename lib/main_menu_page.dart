import 'package:flutter/material.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Фоновое изображение
          Positioned.fill(
            child: Image.asset(
              'assets/images/main_menu_background_image.png', // Укажите правильный путь к вашему изображению
              fit: BoxFit.cover,
            ),
          ),
          // Основное содержимое
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Кнопки
                _buildMenuItem('Контрольный лист', () {}), // Пустая функция onPressed пока без логики
                _buildMenuItem('Управление листами', () {}),
                _buildMenuItem('Изменить данные БД', () {}),
                _buildMenuItem('Отчетность', () {}),
                _buildMenuItem('Календарь', () {}),
              ],
            ),
          ),
          // Иконка оператора в левом нижнем углу
          Positioned(
            left: 16.0,
            bottom: 16.0,
            child: Image.asset(
              'assets/icons/operator_icon.png', // Укажите правильный путь к вашей иконке
              width: 40.0, // Размер иконки, можете настроить
              height: 40.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String text, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0), // Отступы вокруг кнопки
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16.0), // Внутренние отступы кнопки
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Скругление углов
          ),
          elevation: 5.0, // Тень
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
