//
//  ViewController.m
//  CountriesFlagsExampleObjC
//

#import "ViewController.h"

@import CountriesFlagsObjC;

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageView.image = [UIImage flagForCountry:CountriesFlagsUkraine
                                              size:self.imageView.frame.size];
}


@end
