//
//  CityDetail.m
//  Navigation Controller
//
//  Created by Lucio on 6/29/16.
//  Copyright © 2016 Smartplace. All rights reserved.
//

#import "CityDetail.h"

@interface CityDetail ()
@property NSMutableArray *cityTitles;
@property NSMutableArray *cityphoto;
@property NSMutableArray *citydescription;

@end

@implementation CityDetail

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if([self.cityState  isEqual: @"Jalisco"])
    {
    self.cityTitles  = [[NSMutableArray alloc] initWithObjects: @"GDL", @"Zapopan", @"Tonala", @"Vallarta", @"Arandas", nil];
    self.cityphoto  = [[NSMutableArray alloc] initWithObjects: @"gdl.jpg", @"zapopan.jpg", @"tonala.jpg", @"vallarta.jpg", @"arandas.jpg", nil];
    self.citydescription  = [[NSMutableArray alloc] initWithObjects: @"Es considerada una de las urbes más grandes del país en extensión territorial.", @"Es el municipio con mayor PIB per cápita e IDH de Jalisco.", @"Es un centro de artesanía, con reconocimiento nacional e internacional.", @"Es la segunda zona económica más importante del estado de Jalisco y el tercer puerto más importante de México. ", @"Es parte de la macro región del Bajío Occidente o Centro Occidente de México.", nil];
    }
    else if([self.cityState  isEqual: @"Sinaloa"])
    {
    self.cityTitles  = [[NSMutableArray alloc] initWithObjects: @"Culiacan", @"Los Mochis", @"Mazatlan", @"Guasave", @"Rosario", nil];
    self.cityphoto  = [[NSMutableArray alloc] initWithObjects: @"culiacan.jpg", @"losmochis.jpg", @"mazatlan.jpg", @"guasave.jpg", @"rosario.jpg", nil];
    self.citydescription  = [[NSMutableArray alloc] initWithObjects: @"Culiacán es la ciudad más poblada y extensa del estado de Sinaloa.", @" Es uno de los emporios agrícolas más grandes del país.", @"Es también conocida como La Perla del Pacífico por el clima cálido.", @"Es considerada el Corazón Agrícola de México.", @"La ciudad de Rosario se localiza a 64 kilómetros al sur de Mazatlán, por la carretera federal 15.", nil];
    }
    else if([self.cityState  isEqual: @"Sonora"])
    {
    self.cityTitles  = [[NSMutableArray alloc] initWithObjects: @"Hermosillo", @"Navojoa", @"Nogales", @"Ures", @"Rayon", nil];
    self.cityphoto  = [[NSMutableArray alloc] initWithObjects: @"Hermosillo.jpg", @"navojoa.jpg", @"Nogales.png", @"Ures.jpg", @"Rayon.jpg", nil];
    self.citydescription  = [[NSMutableArray alloc] initWithObjects: @"Hermosillo fue catalogada como una de las 5 mejores ciudades para vivir en México.", @"Ofrece excelentes atractivos turísticos a los visitantes nacionales y extranjeros.", @"Heroica Nogales, mejor conocida como Nogales, es una ciudad en la frontera noroeste del estado mexicano de Sonora, cabecera del municipio del mismo nombre.", @"Su población se dedica principalmente a la agricultura y ganadería.", @"Rayón es un pequeño pueblo rodeado de su término municipal, en el centro del estado mexicano de Sonora, a una distancia de 110 kilómetros de la capital del estado, Hermosillo.", nil];
    }
    else if([self.cityState  isEqual: @"BCS"])
    {
    self.cityTitles  = [[NSMutableArray alloc] initWithObjects: @"La Paz", @"Comondu", @"Mulege", @"Santa Rosalia", @"Loreto", nil];
    self.cityphoto  = [[NSMutableArray alloc] initWithObjects: @"lapaz.jpg", @"comondu.jpg", @"Mulege.jpg", @"Santarosalia.jpg", @"Loreto.jpg", nil];
    self.citydescription  = [[NSMutableArray alloc] initWithObjects: @"Es una ciudad colindante con el golfo de California, fija su desarrollo en el turismo nacional e internacional.", @"Comondú se encuentra en el centro del estado de Baja California Sur.", @"Mulegé se deriva de las voces cochimies Carmaañc galexa, que significa barranca grande de la boca blanca.", @"Es la cabecera del municipio de Mulegé, Baja California Sur y se localiza al norte del estado.", @"El pueblo es un centro turístico que atrae principalmente turistas estadounidenses y canadienses.", nil];
    }
    else
    {
    self.cityTitles  = [[NSMutableArray alloc] initWithObjects: @"Tepic", @"Bahia de Banderas", @"San Blas", @"Tecuala", @"Compostela", nil];
    self.cityphoto = [[NSMutableArray alloc] initWithObjects: @"Tepic.jpg", @"Bahia.jpg", @"Sanblas.jpg", @"Tecuala.jpg", @"Compostela.jpg", nil];
    self.citydescription  = [[NSMutableArray alloc] initWithObjects: @"Como capital del Estado, Tepic es la sede de los tres poderes de la entidad, y concentra la sede del ayuntamiento municipal.", @"Es un importante punto turístico tanto a nivel nacional como internacional ya que recibe anualmente millones de turistas nacionales y de origen extranjero.", @"San Blas es un lugar de atracción turística que cuenta con bellas y atractivas playas.", @"Limita al Norte con el municipio de Acaponeta.", @"El nombre de Compostela lo adopta en 1540 en memoria de la ciudad gallega de Santiago de Compostela.", nil];
    }
    self.lblcity.text          = self.cityTitle;
    if([self.lblcity.text  isEqual: self.cityTitles[0]])
    {
        self.imgcity.image = [UIImage imageNamed:self.cityphoto[0]];
        self.lbldesc.text = self.citydescription[0];
    }
    else if([self.lblcity.text  isEqual: self.cityTitles[1]])
    {
        self.imgcity.image = [UIImage imageNamed:self.cityphoto[1]];
        self.lbldesc.text = self.citydescription[1];
    }
    else if([self.lblcity.text  isEqual: self.cityTitles[2]])
    {
        self.imgcity.image = [UIImage imageNamed:self.cityphoto[2]];
        self.lbldesc.text = self.citydescription[2];
    }
    else if([self.lblcity.text  isEqual: self.cityTitles[3]])
    {
        self.imgcity.image = [UIImage imageNamed:self.cityphoto[3]];
        self.lbldesc.text = self.citydescription[3];
    }
    else
    {
        self.imgcity.image = [UIImage imageNamed:self.cityphoto[4]];
        self.lbldesc.text = self.citydescription[4];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
