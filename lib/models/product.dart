class Stock {
  final int? stockLevel;

  Stock({
    this.stockLevel,
  });

  factory Stock.fromJson(Map<String, dynamic> json) {
    return new Stock(
      stockLevel: json['stockLevel'],
    );
  }
}

class Price {
  final String? currencyIso, formattedValue, type;
  final double? value;
  final String? priceType;

  Price({
    this.currencyIso,
    this.formattedValue,
    this.priceType,
    this.type,
    this.value,
  });

  factory Price.fromJson(Map<String, dynamic> json) {
    return new Price(
      currencyIso: json['currencyIso'],
      formattedValue: json['formattedValue'],
      priceType: json['priceType'],
      type: json['type'],
      value: json['value'],
    );
  }
}

class ProductImage {
  final String? url;

  ProductImage({
    this.url,
  });

  factory ProductImage.fromJson(Map<String, dynamic> json) {
    return new ProductImage(
      url: json['url'],
    );
  }
}

class ProductColor {
  final String? code, text, filterName, hybrisCode;

  ProductColor({
    this.code,
    this.filterName,
    this.hybrisCode,
    this.text,
  });

  factory ProductColor.fromJson(Map<String, dynamic> json) {
    return new ProductColor(
      code: json['code'],
      filterName: json['filterName'],
      hybrisCode: json['hybrisCode'],
      text: json['text'],
    );
  }
}

class VariantSizes {
  final int? orderFilter;
  final String? filterCode;

  VariantSizes({
    this.filterCode,
    this.orderFilter,
  });

  factory VariantSizes.fromJson(Map<String, dynamic> json) {
    return new VariantSizes(
      filterCode: json['filterCode'],
      orderFilter: json['orderFilter'],
    );
  }
}

class ProductArticle {
  final String? code, name, pk, ticket, rgbColor, genArticle;
  final List<ProductImage>? images;
  final List<String>? sellingAttributes;
  final Price? whitePrice;
  final List<ProductImage>? logoPicture;
  final List<ProductImage>? normalPicture;
  final bool? visible;
  final int? numbersOfPieces;
  final bool? dummy;
  final int? ecoTaxValue;
  final bool? redirectToPdp;
  final bool? comingSoon;
  final ProductColor? color;

  ProductArticle({
    this.code,
    this.color,
    this.comingSoon,
    this.dummy,
    this.ecoTaxValue,
    this.genArticle,
    this.images,
    this.logoPicture,
    this.name,
    this.normalPicture,
    this.numbersOfPieces,
    this.pk,
    this.redirectToPdp,
    this.rgbColor,
    this.sellingAttributes,
    this.ticket,
    this.visible,
    this.whitePrice,
  });

  factory ProductArticle.fromJson(Map<String, dynamic> json) {
    List<ProductImage> images =
        (json['images'] as List).map((i) => ProductImage.fromJson(i)).toList();
    List<ProductImage> logoPicture = (json['logoPicture'] as List)
        .map(
          (i) => ProductImage.fromJson(i),
        )
        .toList();
    List<ProductImage> normalPicture = (json['normalPicture'] as List)
        .map(
          (i) => ProductImage.fromJson(i),
        )
        .toList();
    return new ProductArticle(
      code: json['code'],
      color: new ProductColor.fromJson(
        json['color'],
      ),
      comingSoon: json['comingSoon'],
      dummy: json['dummy'],
      ecoTaxValue: json['ecoTaxValue'],
      genArticle: json['genArticle'],
      images: images,
      logoPicture: logoPicture,
      name: json['name'],
      normalPicture: normalPicture,
      numbersOfPieces: json['numbersOfPieces'],
      pk: json['pk'],
      redirectToPdp: json['redirectToPdp'],
      rgbColor: json['rgbColor'],
      // sellingAttributes: List<String>.from(
      //   json['sellingAttributes'] ? json['sellingAttributes'] : [],
      // ),
      ticket: json['ticket'],
      visible: json['visible'],
      whitePrice: new Price.fromJson(
        json['whitePrice'],
      ),
    );
  }
}

class Product {
  final String? code, name, pk;
  final Stock? stock;
  final Price? price;
  final List<ProductImage>? images;
  final List<String>? categories;
  final List<String>? sellingAttributes;
  final Price? whitePrice;
  final List<ProductArticle>? articles;
  final bool? visible;
  final List<String>? concept;
  final int? numbersOfPieces;
  final bool? sale;
  final List<VariantSizes>? variantSizes;
  final List<String>? articleCodes;
  final String? ticket;
  final String? searchEngineProductId;
  final bool? dummy;
  final String? linkPdp;
  final String? categoryName;
  final List<String>? rgbColors;
  final List<String>? articleColorNames;
  final int? ecoTaxValue;
  final int? swatchesTotal;
  final bool? showPriceMarker;
  final bool? redirectToPdp;
  final String? mainCategoryCode;
  final bool? comingSoon;

  Product({
    this.articleCodes,
    this.articleColorNames,
    this.articles,
    this.categories,
    this.categoryName,
    this.code,
    this.comingSoon,
    this.concept,
    this.dummy,
    this.ecoTaxValue,
    this.images,
    this.linkPdp,
    this.mainCategoryCode,
    this.name,
    this.numbersOfPieces,
    this.pk,
    this.price,
    this.redirectToPdp,
    this.rgbColors,
    this.sale,
    this.searchEngineProductId,
    this.sellingAttributes,
    this.showPriceMarker,
    this.stock,
    this.swatchesTotal,
    this.ticket,
    this.variantSizes,
    this.visible,
    this.whitePrice,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    List<ProductArticle> articles = (json['articles'] as List)
        .map(
          (i) => ProductArticle.fromJson(i),
        )
        .toList();
    List<ProductImage> images = (json['images'] as List)
        .map(
          (i) => ProductImage.fromJson(i),
        )
        .toList();
    List<VariantSizes> variantSizes = (json['variantSizes'] as List)
        .map(
          (i) => VariantSizes.fromJson(i),
        )
        .toList();
    return new Product(
      // articleCodes: json['articleCodes']
      //     ? new List<String>.from(
      //         json['articleCodes'],
      //       )
      //     : [],
      // articleColorNames: json['articleColorNames']
      //     ? new List<String>.from(json['articleColorNames'])
      //     : [],
      articles: articles,
      // categories: new List<String>.from(
      //   json['categories'] ? json['categories'] : [],
      // ),
      categoryName: json['categoryName'],
      code: json['code'],
      comingSoon: json['comingSoon'],
      // concept: new List<String>.from(
      //   json['concept'] ? json['concept'] : [],
      // ),
      dummy: json['dummy'],
      ecoTaxValue: json['ecoTaxValue'],
      images: images,
      linkPdp: json['linkPdp'],
      mainCategoryCode: json['mainCategoryCode'],
      name: json['name'],
      numbersOfPieces: json['numbersOfPieces'],
      pk: json['pk'],
      price: new Price.fromJson(json['price']),
      redirectToPdp: json['redirectToPdp'],
      // rgbColors: new List<String>.from(
      //   json['rgbColors'] ? json['rgbColors'] : [],
      // ),
      sale: json['sale'],
      searchEngineProductId: json['searchEngineProductId'],
      // sellingAttributes: new List<String>.from(
      //   json['sellingAttributes'] ? json['sellingAttributes'] : [],
      // ),
      showPriceMarker: json['showPriceMarker'],
      stock: new Stock.fromJson(
        json['stock'],
      ),
      swatchesTotal: json['swatchesTotal'],
      ticket: json['ticket'],
      variantSizes: variantSizes,
      visible: json['visible'],
      whitePrice: new Price.fromJson(
        json['whitePrice'],
      ),
    );
  }
}

class ProductEdge {
  final Product? node;
  ProductEdge({
    this.node,
  });
  factory ProductEdge.fromJson(Map<String, dynamic> json) {
    return new ProductEdge(
      node: Product.fromJson(
        json['node'],
      ),
    );
  }
}

class ProductConnection {
  final List<ProductEdge>? edges;
  ProductConnection({
    this.edges,
  });
  factory ProductConnection.fromJson(Map<String, dynamic> json) {
    List<ProductEdge> edges = (json['edges'] as List)
        .map(
          (i) => ProductEdge.fromJson(i),
        )
        .toList();
    return new ProductConnection(
      edges: edges,
    );
  }
}

class ProductResponse {
  final ProductConnection? connection;
  ProductResponse({
    this.connection,
  });
  factory ProductResponse.fromJson(Map<String, dynamic> json) {
    return new ProductResponse(
      connection: ProductConnection.fromJson(
        json['products'],
      ),
    );
  }
}
