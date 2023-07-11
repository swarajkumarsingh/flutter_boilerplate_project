import 'rotated_infinite_tile_grid_view.dart';
import 'package:flutter/material.dart';

import '../../constants/onboarding_constants.dart';
import 'auto_scroll.dart';
import 'cover_tile.dart';

/// A widget that displays a scrolling background of cute little texts.
class ScrollingCoversBackground extends StatelessWidget {
  /// Creates a [ScrollingCoversBackground].
  const ScrollingCoversBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return AutoScroll(
      child: (ScrollController scrollController) {
        return RotatedInfiniteTileGridView(
          scrollController: scrollController,
          itemBuilder: (BuildContext context, int index) {
            return CoverTile(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    color: theme.colorScheme.onSurface,
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            cuteTodos[index % cuteTodos.length].text,
                            style: theme.textTheme.titleMedium!.copyWith(
                              color: theme.colorScheme.surface,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          const Divider(),
                          Text(
                            cuteTodos[index % cuteTodos.length].date,
                            style: theme.textTheme.labelMedium!.copyWith(
                              color: theme.colorScheme.surface,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          const Divider(),
                          Flexible(
                            child: Text(
                              cuteTodos[index % cuteTodos.length].description,
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: theme.colorScheme.surface,
                              ),
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
