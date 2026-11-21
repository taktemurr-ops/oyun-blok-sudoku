/// Blok Sudoku: 9x9 tahta, parçaları yerleştir; dolu satır, sütun ve 3x3 kutular temizlenir.
///
/// Motor Blok Bulmaca (game-001) ile ortak; bu paket yalnızca oyunun kimliğini,
/// adını ve öğreticisini tanımlar. Blok Oyunları merkez uygulamasında yer alır.
library;

import 'package:flutter/material.dart';
import 'package:game_001_block_puzzle_master/game/block_view.dart';
import 'package:game_001_block_puzzle_master/game/rules.dart';
import 'package:studio_core/app/game_api.dart';

const blokSudokuId = 'oyun-blok-sudoku';

final blokSudokuConfig = GameConfig(
  gameId: blokSudokuId,
  title: const ['Blok Sudoku', 'Block Sudoku', 'Block-Sudoku', 'Sudoku de Bloques', 'Sudoku Blocs'],
  tagline: const [
    'Satır, sütun ve 3x3 kutuları doldur!',
    'Fill rows, columns and 3x3 boxes!',
    'Fülle Reihen, Spalten und 3x3-Felder!',
    '¡Llena filas, columnas y cajas de 3x3!',
    'Remplissez lignes, colonnes et carrés 3x3 !',
  ],
  seedColor: const Color(0xFF00897B),
  icon: Icons.grid_on_rounded,
  rules: BlockRules(sudoku: true, id: blokSudokuId),
  buildPlay: (ctx) => BlockView(ctx: ctx),
  tutorial: const [
    TutorialStep(Icons.pan_tool_alt, [
      'Parçaları 9x9 tahtaya sürükle ya da parçaya dokunup kareye dokun.',
      'Drag pieces onto the 9x9 board, or tap a piece and then a cell.',
      'Ziehe Teile aufs 9x9-Brett oder tippe Teil und Feld an.',
      'Arrastra las piezas al tablero 9x9 o toca pieza y casilla.',
      'Glissez les pièces sur la grille 9x9 ou touchez pièce puis case.',
    ]),
    TutorialStep(Icons.grid_on, [
      'Dolu satır, sütun ve gölgeli 3x3 kutular temizlenir. Birden fazlası kombo verir.',
      'Full rows, columns and shaded 3x3 boxes clear. Several at once make combos.',
      'Volle Reihen, Spalten und 3x3-Felder verschwinden. Mehrere = Kombo.',
      'Filas, columnas y cajas 3x3 llenas se borran. Varias a la vez dan combo.',
      'Lignes, colonnes et carrés 3x3 pleins disparaissent. Plusieurs = combo.',
    ]),
    TutorialStep(Icons.rotate_right, [
      'Parçaya uzun basarak döndür. Çekiç, yenile ve ipucu güçlendiricilerini kullan.',
      'Long-press a piece to rotate. Use hammer, refresh and hint boosters.',
      'Lange drücken zum Drehen. Nutze Hammer, Neu und Tipp.',
      'Mantén pulsado para girar. Usa martillo, renovar y pista.',
      'Appui long pour pivoter. Marteau, renouveler et indice.',
    ]),
  ],
);
