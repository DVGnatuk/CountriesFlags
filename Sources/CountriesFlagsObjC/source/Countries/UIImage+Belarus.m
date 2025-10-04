//
//  UIImage+Belarus.m
//  CountriesFlags
//

#import "Countries/UIImage+Belarus.h"

@implementation UIImage (Belarus)

+ (UIImage * _Nullable)flagBelarusWithSize:(CGSize)size {
    UIColor* colorWhite = [UIColor whiteColor];
    UIColor* colorRed = [UIColor colorWithRed:206.0f/255.0f
                                        green:23.0f/255.0f
                                         blue:32.0f/255.0f
                                        alpha:1.0f];
    UIColor* colorGreen = [UIColor colorWithRed:0.0f
                                          green:124.0f/255.0f
                                           blue:48.0f/255.0f
                                          alpha:1.0f];
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0f);
    
    [colorRed setFill];
    UIRectFill(CGRectMake(0.0f, 0.0f, size.width, size.height));
    
    [colorGreen setFill];
    UIRectFill(CGRectMake(0.0f, size.height / 9.0f * 6.0f, size.width, size.height / 3.0f));
    
    [colorWhite setFill];
    CGFloat ornamentOffsetX = size.width / 18.0f * (2.0f / 21.0f);
    CGFloat ornamentWidth = size.width / 18.0f * 2.0f;
    UIRectFill(CGRectMake(ornamentOffsetX, 0.0f, ornamentWidth, size.height));

    // Hoist ornament
    [colorRed setFill];
    [colorRed setStroke];
    int hoistOrnamentTemplate[31][12] = {
        {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1},
        {1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1},
        {0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0},
        {0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0},
        {1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0},
        {0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0},
        {1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1},
        {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1},
        {0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0},
        {0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0},
        {1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0},
        {0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1},
        {1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1},
        {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
        {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
        {1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1},
        {0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1},
        {1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1},
        {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0},
        {1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0},
        {1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1},
        {1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0},
        {0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0},
        {0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0},
        {0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1},
        {0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1}
    };
    int rowsAmount = sizeof(hoistOrnamentTemplate) / sizeof(hoistOrnamentTemplate[0]);
    int columnsAmount = sizeof(hoistOrnamentTemplate[0]) / sizeof(hoistOrnamentTemplate[0][0]);
    CGFloat ornamentCellWidth = ornamentWidth / (columnsAmount * 2.0f - 1.0f);
    CGFloat ornamentCellHeight = size.height / (rowsAmount * 2.0f - 1.0f);

    for (int rowIndex = rowsAmount - 1; rowIndex >= 0; rowIndex--) {
        for (int columnIndex = columnsAmount - 1; columnIndex >= 0; columnIndex--) {
            int columnData = hoistOrnamentTemplate[rowIndex][columnIndex];
            if (columnData == 0) continue;
            // top left part
            UIBezierPath* path = [UIBezierPath bezierPathWithRect:CGRectMake(ornamentOffsetX + ornamentCellWidth * columnIndex,
                                                                             ornamentCellHeight * rowIndex,
                                                                             ornamentCellWidth,
                                                                             ornamentCellHeight)];
            [path fill];
            [path stroke];
            // top right part
            path = [UIBezierPath bezierPathWithRect:CGRectMake(ornamentOffsetX + ornamentCellWidth * (columnsAmount * 2 - columnIndex - 2),
                                                               ornamentCellHeight * rowIndex,
                                                               ornamentCellWidth,
                                                               ornamentCellHeight)];
            [path fill];
            [path stroke];
            // bottom left part
            path = [UIBezierPath bezierPathWithRect:CGRectMake(ornamentOffsetX + ornamentCellWidth * columnIndex,
                                                               ornamentCellHeight * (rowsAmount + rowsAmount - rowIndex - 2),
                                                               ornamentCellWidth,
                                                               ornamentCellHeight)];
            [path fill];
            [path stroke];
            // bottom right part
            path = [UIBezierPath bezierPathWithRect:CGRectMake(ornamentOffsetX + ornamentCellWidth * (columnsAmount * 2 - columnIndex - 2),
                                                               ornamentCellHeight * (rowsAmount + rowsAmount - rowIndex - 2),
                                                               ornamentCellWidth,
                                                               ornamentCellHeight)];
            [path fill];
            [path stroke];
        }
    }
    
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
