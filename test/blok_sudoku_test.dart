import 'package:flutter_test/flutter_test.dart';
import 'package:game_001_block_puzzle_master/game/block_engine.dart';
import 'package:game_001_block_puzzle_master/game/rules.dart';
import 'package:oyun_blok_sudoku/oyun_blok_sudoku.dart';
import 'package:studio_core/core/level_plan.dart';

void main() {
  test('Blok Sudoku: 9x9 tahta, 3x3 kutular, her bölüm oynanabilir', () {
    final rules = blokSudokuConfig.rules as BlockRules;
    expect(rules.gameId, blokSudokuId);
    final planner = LevelPlanner(gameId: rules.gameId, optionalMechanics: rules.optionalMechanics);
    for (var n = 1; n <= 200; n++) {
      final level = rules.finalize(rules.build(planner.spec(n)));
      expect(level.size, 9);
      expect(level.box, 3);
      final g = BlockGame(level);
      expect(g.hasMove, isTrue, reason: 'level $n starts with a move');
    }
  });
}
