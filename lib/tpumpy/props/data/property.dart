import '../../../tpumpy/props/data/cartegory.dart';
import '../../../tpumpy/props/data/co_ownership.dart';
import '../../../tpumpy/props/data/installment_plan.dart';
import '../../../tpumpy/props/data/location.dart';
import '../../../tpumpy/props/data/payment_pool.dart';

class Property {
  //BASIC DETAILS
  final String id;
  final String title;
  final String details;
  final Location? location;
  final String address;
  final Cartegory cartegory; // Appartment, Store, Office

  //CREDEBILITY
  int? rating = 0;
  List<String>? comments = [
    "Great Location",
  ];

  //MEDIA
  List<String>? images = [];
  String? video = "";

  double price = 0;
  bool? isPooled = false;
  bool? isTaken = false;

  //FEATURES
  bool? eletricity = true;
  bool? security = true;
  bool? water = true;

  int? bedrooms;
  int? bathrooms;

  //AMENITIES
  String? packingSpace = "2";
  String? garden = "Comon";
  String? pool = "Shared";

  //PAYMENTS
  double? outrightPlan; //Full Payment,
  InstallmentPlan? installmentPlan; //Installment Plan
  CoOwnershipPlan? coOwnershipPlan; //change it to Id of coOwnership Plan

  //OFFICIAL DOCUMENTS
  bool? registeredSurvey = true;
  bool? governmentAproved = true;
  List<String>? documents = [];

  //Property Documents
  String? siteMap = "";
  String? housePlan = "";

  Property({
    //BASIC DETAILS
    required this.id,
    required this.title,
    required this.price,
    required this.details,
    this.location,
    required this.address,
    required this.cartegory,
    this.isTaken,

    //CREDEBILITY
    this.rating,
    this.comments,

    //MEDIA
    this.images,
    this.video,

    //FEATURES
    this.eletricity,
    this.water,
    this.security,
    this.bedrooms,
    this.bathrooms,

    //PAYMENTS
    this.installmentPlan,
    this.coOwnershipPlan,
    this.outrightPlan,

    //AMENITIES
    this.packingSpace,
    this.garden,
    this.pool,

    //official documents
    this.registeredSurvey,
    this.governmentAproved,
    this.documents,

    //property documents
    this.housePlan,
    this.siteMap,
  });
}

List<Property> myProperties = [
  Property(
      id: "1",
      title: "3- Bed, Semi Detached",
      details:
          "The very best of comfort in homes as engeneered with the mindset of reliability and maximum comfort",
      price: 2000000,
      address: "T-Pumpy Court, Gwagwalada, central area",
      cartegory: Cartegory.homes,
      images: [
        "assets/images/props4.jpg",
        "assets/images/props6.jpg",
        "assets/images/props7.jpg",
        "assets/images/props8.jpg",
        "assets/images/props9.jpg",
        "assets/images/props11.jpg",
        "assets/images/props12.jpg",
      ],
      video: "assets/images/propsvideo.mp4",
      siteMap: "assets/images/map.jpg",
      housePlan: "assets/images/plan.jpg",
      eletricity: true,
      security: true,
      bedrooms: 4,
      bathrooms: 5,
      water: true,

      //CREDIBILITY
      rating: 4,
      comments: ["The Best Single detarched house i have seen"],
      //PAYMENT
      installmentPlan: InstallmentPlan(
        minimumInitialPayment: 230000,
        closingPeriod: 2,
        amountPaid: 500000,
        totalCost: 2000000,
        initialPayment: 500000,
        frequency: PaymentFrequency.monthly,
      )),
  Property(
      id: "2",
      title: "Semi Detached Home",
      details:
          "Immerse yourself in luxury with this mordern apartment featuring spacious rooms, top-notch amenities, and breathtaking views. Ideal for those seeking a blend of comfort and sophistication",
      price: 70000000,
      address: "T-Pumpy Court, Gwagwalada, central area",
      cartegory: Cartegory.homes,
      images: [
        "assets/images/props16.jpg",
        "assets/images/props17.jpg",
        "assets/images/props18.jpg",
        "assets/images/props12.jpg",
        "assets/images/props4.jpg",
        "assets/images/props7.jpg",
        "assets/images/props8.jpg",
      ],
      video: "assets/images/propsvideo.mp4",
      siteMap: "assets/images/map.jpg",
      housePlan: "assets/images/plan.jpg",
      eletricity: true,
      security: true,
      bedrooms: 4,
      bathrooms: 5,
      water: true,

      //CREDIBILITY
      rating: 4,
      comments: ["The Best Single detarched house i have seen"],
      //CREDEBILITY

      //PAYMENT
      outrightPlan: 2000000),
  Property(
      id: "3",
      title: "Self Contain-Hostel",
      details:
          "The very best of comfort in homes as engeneered with the mindset of reliability and maximum comfort",
      price: 2000000,
      address: "T-Pumpy Court, Gwagwalada, central area",
      cartegory: Cartegory.homes,
      images: [
        "assets/images/props4.jpg",
        "assets/images/props6.jpg",
        "assets/images/props7.jpg",
        "assets/images/props8.jpg",
        "assets/images/props9.jpg",
        "assets/images/props11.jpg",
        "assets/images/props12.jpg",
      ],
      video: "assets/images/propsvideo.mp4",
      siteMap: "assets/images/map.jpg",
      housePlan: "assets/images/plan.jpg",
      eletricity: true,
      security: true,
      bedrooms: 4,
      bathrooms: 5,
      water: true,

      //CREDIBILITY
      rating: 4,
      comments: ["The Best Single detarched house i have seen"],
      //CREDEBILITY

      //PAYMENT
      coOwnershipPlan: CoOwnershipPlan(
        propertyId: "propertyId",
        totalValue: 2000000,
        numberOfShares: 5,
        sharePrice: 400000,
      )),
  Property(
    id: "4",
    title: "T-Pumpy Homes Stead",
    details:
        "The very best of comfort in homes as engeneered with the mindset of reliability and maximum comfort",
    price: 2000000,
    address: "T-Pumpy Court, Gwagwalada, central area",
    cartegory: Cartegory.homes,
    images: [
      "assets/images/props4.jpg",
      "assets/images/props6.jpg",
      "assets/images/props7.jpg",
      "assets/images/props8.jpg",
      "assets/images/props9.jpg",
      "assets/images/props11.jpg",
      "assets/images/props12.jpg",
    ],
    video: "assets/images/propsvideo.mp4",
    siteMap: "assets/images/map.jpg",
    housePlan: "assets/images/plan.jpg",
    eletricity: true,
    security: true,
    bedrooms: 4,
    bathrooms: 5,
    water: true,

    //CREDIBILITY
    rating: 4,
    comments: ["The Best Single detarched house i have seen"],
    //CREDEBILITY

    //PAYMENT
    installmentPlan: null,
    isTaken: true,
  ),
  Property(
    id: "5",
    title: "Event Hall: 300 Capacity",
    details:
        "The very best of comfort in homes as engeneered with the mindset of reliability and maximum comfort",
    price: 2000000,
    address: "T-Pumpy Court, Gwagwalada, central area",
    cartegory: Cartegory.homes,
    images: [
      "assets/images/props4.jpg",
      "assets/images/props6.jpg",
      "assets/images/props7.jpg",
      "assets/images/props8.jpg",
      "assets/images/props9.jpg",
      "assets/images/props11.jpg",
      "assets/images/props12.jpg",
    ],
    video: "assets/images/propsvideo.mp4",
    siteMap: "assets/images/map.jpg",
    housePlan: "assets/images/plan.jpg",
    eletricity: true,
    security: true,
    bedrooms: 4,
    bathrooms: 5,
    water: true,

    //CREDIBILITY
    rating: 4,
    comments: ["The Best Single detarched house i have seen"],
    //CREDEBILITY

    //PAYMENT
    coOwnershipPlan: CoOwnershipPlan(
        propertyId: "Props001",
        totalValue: 20000000,
        numberOfShares: 4,
        sharePrice: 20),

    isTaken: true,
  ),
  Property(
    id: "6",
    title: "T-Pumpy Homes Stead",
    details:
        "The very best of comfort in homes as engeneered with the mindset of reliability and maximum comfort",
    price: 2000000,
    address: "T-Pumpy Court, Gwagwalada, central area",
    cartegory: Cartegory.homes,
    images: [
      "assets/images/props4.jpg",
      "assets/images/props6.jpg",
      "assets/images/props7.jpg",
      "assets/images/props8.jpg",
      "assets/images/props9.jpg",
      "assets/images/props11.jpg",
      "assets/images/props12.jpg",
    ],
    video: "assets/images/propsvideo.mp4",
    siteMap: "assets/images/map.jpg",
    housePlan: "assets/images/plan.jpg",
    eletricity: true,
    security: true,
    bedrooms: 4,
    bathrooms: 5,
    water: true,

    //CREDIBILITY
    rating: 4,
    comments: ["The Best Single detarched house i have seen"],
    //CREDEBILITY

    //PAYMENT

    isTaken: true,
  ),
  Property(
    id: "7",
    title: "Land for 4-Bed Duplex",
    details:
        "The very best of comfort in homes as engeneered with the mindset of reliability and maximum comfort",
    price: 2000000,
    address: "T-Pumpy Court, Gwagwalada, central area",
    cartegory: Cartegory.homes,
    images: [
      "assets/images/props4.jpg",
      "assets/images/props6.jpg",
      "assets/images/props7.jpg",
      "assets/images/props8.jpg",
      "assets/images/props9.jpg",
      "assets/images/props11.jpg",
      "assets/images/props12.jpg",
    ],
    video: "assets/images/propsvideo.mp4",
    siteMap: "assets/images/map.jpg",
    housePlan: "assets/images/plan.jpg",
    eletricity: true,
    security: true,
    bedrooms: 4,
    bathrooms: 5,
    water: true,

    //CREDIBILITY
    rating: 4,
    comments: ["The Best Single detarched house i have seen"],
    //CREDEBILITY

    //PAYMENT

    isTaken: true,
  ),
  Property(
    id: "8",
    title: "5-Bed Flat",
    details:
        "The very best of comfort in homes as engeneered with the mindset of reliability and maximum comfort",
    price: 2000000,
    address: "T-Pumpy Court, Gwagwalada, central area",
    cartegory: Cartegory.homes,
    images: [
      "assets/images/props4.jpg",
      "assets/images/props6.jpg",
      "assets/images/props7.jpg",
      "assets/images/props8.jpg",
      "assets/images/props9.jpg",
      "assets/images/props11.jpg",
      "assets/images/props12.jpg",
    ],
    video: "assets/images/propsvideo.mp4",
    siteMap: "assets/images/map.jpg",
    housePlan: "assets/images/plan.jpg",
    eletricity: true,
    security: true,
    bedrooms: 4,
    bathrooms: 5,
    water: true,

    //CREDIBILITY
    rating: 4,
    comments: ["The Best Single detarched house i have seen"],
    //CREDEBILITY

    //PAYMENT

    isTaken: true,
  ),
  Property(
    id: "9",
    title: "T-Pumpy Homes Stead",
    details:
        "The very best of comfort in homes as engeneered with the mindset of reliability and maximum comfort",
    price: 2000000,
    address: "T-Pumpy Court, Gwagwalada, central area",
    cartegory: Cartegory.homes,
    images: [
      "assets/images/props4.jpg",
      "assets/images/props6.jpg",
      "assets/images/props7.jpg",
      "assets/images/props8.jpg",
      "assets/images/props9.jpg",
      "assets/images/props11.jpg",
      "assets/images/props12.jpg",
    ],
    video: "assets/images/propsvideo.mp4",
    siteMap: "assets/images/map.jpg",
    housePlan: "assets/images/plan.jpg",
    eletricity: true,
    security: true,
    bedrooms: 4,
    bathrooms: 5,
    water: true,

    //CREDIBILITY
    rating: 4,
    comments: ["The Best Single detarched house i have seen"],
    //CREDEBILITY

    //PAYMENT

    isTaken: true,
  ),
  Property(
    id: "10",
    title: "T-Pumpy Homes Stead",
    details:
        "The very best of comfort in homes as engeneered with the mindset of reliability and maximum comfort",
    price: 2000000,
    address: "T-Pumpy Court, Gwagwalada, central area",
    cartegory: Cartegory.homes,
    images: [
      "assets/images/props4.jpg",
      "assets/images/props6.jpg",
      "assets/images/props7.jpg",
      "assets/images/props8.jpg",
      "assets/images/props9.jpg",
      "assets/images/props11.jpg",
      "assets/images/props12.jpg",
    ],
    video: "assets/images/propsvideo.mp4",
    siteMap: "assets/images/map.jpg",
    housePlan: "assets/images/plan.jpg",
    eletricity: true,
    security: true,
    bedrooms: 4,
    bathrooms: 5,
    water: true,

    //CREDIBILITY
    rating: 4,
    comments: ["The Best Single detarched house i have seen"],
    //CREDEBILITY

    //PAYMENT

    isTaken: true,
  ),
  Property(
    id: "11",
    title: "T-Pumpy Homes Stead",
    details:
        "The very best of comfort in homes as engeneered with the mindset of reliability and maximum comfort",
    price: 2000000,
    address: "T-Pumpy Court, Gwagwalada, central area",
    cartegory: Cartegory.homes,
    images: [
      "assets/images/props4.jpg",
      "assets/images/props6.jpg",
      "assets/images/props7.jpg",
      "assets/images/props8.jpg",
      "assets/images/props9.jpg",
      "assets/images/props11.jpg",
      "assets/images/props12.jpg",
    ],
    video: "assets/images/propsvideo.mp4",
    siteMap: "assets/images/map.jpg",
    housePlan: "assets/images/plan.jpg",
    eletricity: true,
    security: true,
    bedrooms: 4,
    bathrooms: 5,
    water: true,

    //CREDIBILITY
    rating: 4,
    comments: ["The Best Single detarched house i have seen"],
    //CREDEBILITY

    //PAYMENT

    isTaken: true,
  ),
  Property(
    id: "13",
    title: "T-Pumpy Homes Stead",
    details:
        "The very best of comfort in homes as engeneered with the mindset of reliability and maximum comfort",
    price: 2000000,
    address: "T-Pumpy Court, Gwagwalada, central area",
    cartegory: Cartegory.homes,
    images: [
      "assets/images/props4.jpg",
      "assets/images/props6.jpg",
      "assets/images/props7.jpg",
      "assets/images/props8.jpg",
      "assets/images/props9.jpg",
      "assets/images/props11.jpg",
      "assets/images/props12.jpg",
    ],
    video: "assets/images/propsvideo.mp4",
    siteMap: "assets/images/map.jpg",
    housePlan: "assets/images/plan.jpg",
    eletricity: true,
    security: true,
    bedrooms: 4,
    bathrooms: 5,
    water: true,

    //CREDIBILITY
    rating: 4,
    comments: ["The Best Single detarched house i have seen"],
    //CREDEBILITY

    //PAYMENT

    isTaken: true,
  ),
  Property(
    id: "14",
    title: "T-Pumpy Homes Stead",
    details:
        "The very best of comfort in homes as engeneered with the mindset of reliability and maximum comfort",
    price: 2000000,
    address: "T-Pumpy Court, Gwagwalada, central area",
    cartegory: Cartegory.homes,
    images: [
      "assets/images/props4.jpg",
      "assets/images/props6.jpg",
      "assets/images/props7.jpg",
      "assets/images/props8.jpg",
      "assets/images/props9.jpg",
      "assets/images/props11.jpg",
      "assets/images/props12.jpg",
    ],
    video: "assets/images/propsvideo.mp4",
    siteMap: "assets/images/map.jpg",
    housePlan: "assets/images/plan.jpg",
    eletricity: true,
    security: true,
    bedrooms: 4,
    bathrooms: 5,
    water: true,

    //CREDIBILITY
    rating: 4,
    comments: ["The Best Single detarched house i have seen"],
    //CREDEBILITY

    //PAYMENT

    isTaken: true,
  ),
];

List<Property> newProperties = [
  Property(
      id: "15",
      title: "2-Bed Flat, Appartment",
      details: "The best of all mindset of reliability and maximum comfort",
      price: 20000000,
      address: "T-Pumpy Court, Gwagwalada, central area",
      cartegory: Cartegory.homes,
      images: [
        "assets/images/props2.jpg",
        "assets/images/props6.jpg",
        "assets/images/props7.jpg",
        "assets/images/props8.jpg",
        "assets/images/props9.jpg",
        "assets/images/props11.jpg",
        "assets/images/props12.jpg",
      ],
      video: "assets/images/propsvideo.mp4",
      siteMap: "assets/images/map.jpg",
      housePlan: "assets/images/plan.jpg",
      eletricity: true,
      security: true,
      bedrooms: 2,
      bathrooms: 3,
      water: true,

      //CREDIBILITY
      rating: 4,
      comments: ["The Best Single detarched house i have seen"],
      //CREDEBILITY

      //PAYMENT
      coOwnershipPlan: CoOwnershipPlan(
        propertyId: "propertyId",
        totalValue: 20000000,
        numberOfShares: 5,
        sharePrice: 3333333.33,
      )),
  Property(
    id: "16",
    title: "Sandas Luxo Dubplex 3-Bedroom",
    details:
        "The very best of comfort in homes as engeneered with the mindset of reliability and maximum comfort",
    price: 45000000,
    address: "T-Pumpy Court, Gwagwalada, central area",
    cartegory: Cartegory.homes,
    images: [
      "assets/images/props4.jpg",
      "assets/images/props6.jpg",
      "assets/images/props7.jpg",
      "assets/images/props8.jpg",
      "assets/images/props9.jpg",
      "assets/images/props11.jpg",
      "assets/images/props12.jpg",
    ],
    video: "assets/images/propsvideo.mp4",
    siteMap: "assets/images/map.jpg",
    housePlan: "assets/images/plan.jpg",
    eletricity: true,
    security: true,
    bedrooms: 4,
    bathrooms: 5,
    water: true,

    //CREDIBILITY
    rating: 4,
    comments: ["The Best Single detarched house i have seen"],
    //CREDEBILITY

    //PAYMENT
    outrightPlan: 45000000,
  ),
  Property(
    id: "17",
    title: "Semi-Detarched Delux",
    details:
        "Super sliked and engeneered with the mindset of reliability and maximum comfort",
    price: 34000000,
    address: "T-Pumpy Court, Gwagwalada, central area",
    cartegory: Cartegory.homes,
    images: [
      "assets/images/props3.jpg",
      "assets/images/props6.jpg",
      "assets/images/props7.jpg",
      "assets/images/props8.jpg",
      "assets/images/props9.jpg",
      "assets/images/props11.jpg",
      "assets/images/props12.jpg",
    ],
    video: "assets/images/propsvideo.mp4",
    siteMap: "assets/images/map.jpg",
    housePlan: "assets/images/plan.jpg",
    eletricity: true,
    security: true,
    bedrooms: 3,
    bathrooms: 2,
    water: true,

    //CREDIBILITY
    rating: 4,
    comments: ["The Best Single detarched house i have seen"],
    //CREDEBILITY

    //PAYMENT
    installmentPlan: InstallmentPlan(
      minimumInitialPayment: 200000,
      totalCost: 34000000,
      initialPayment: 5000000,
      closingPeriod: 1,
      frequency: PaymentFrequency.monthly,
    ),
  ),
  Property(
      id: "18",
      title: "2-Bed Flat, Appartment",
      details: "The best of all mindset of reliability and maximum comfort",
      price: 20000000,
      address: "T-Pumpy Court, Gwagwalada, central area",
      cartegory: Cartegory.homes,
      images: [
        "assets/images/props2.jpg",
        "assets/images/props6.jpg",
        "assets/images/props7.jpg",
        "assets/images/props8.jpg",
        "assets/images/props9.jpg",
        "assets/images/props11.jpg",
        "assets/images/props12.jpg",
      ],
      video: "assets/images/propsvideo.mp4",
      siteMap: "assets/images/map.jpg",
      housePlan: "assets/images/plan.jpg",
      eletricity: true,
      security: true,
      bedrooms: 2,
      bathrooms: 3,
      water: true,

      //CREDIBILITY
      rating: 4,
      comments: ["The Best Single detarched house i have seen"],
      //CREDEBILITY

      //PAYMENT
      coOwnershipPlan: CoOwnershipPlan(
        propertyId: "propertyId",
        totalValue: 20000000,
        numberOfShares: 5,
        sharePrice: 3333333.33,
      )),
  Property(
    id: "19",
    title: "Sandas Luxo Dubplex 3-Bedroom",
    details:
        "The very best of comfort in homes as engeneered with the mindset of reliability and maximum comfort",
    price: 45000000,
    address: "T-Pumpy Court, Gwagwalada, central area",
    cartegory: Cartegory.homes,
    images: [
      "assets/images/props4.jpg",
      "assets/images/props6.jpg",
      "assets/images/props7.jpg",
      "assets/images/props8.jpg",
      "assets/images/props9.jpg",
      "assets/images/props11.jpg",
      "assets/images/props12.jpg",
    ],
    video: "assets/images/propsvideo.mp4",
    siteMap: "assets/images/map.jpg",
    housePlan: "assets/images/plan.jpg",
    eletricity: true,
    security: true,
    bedrooms: 4,
    bathrooms: 5,
    water: true,

    //CREDIBILITY
    rating: 4,
    comments: ["The Best Single detarched house i have seen"],
    //CREDEBILITY

    //PAYMENT
    outrightPlan: 45000000,
  ),
  Property(
    id: "20",
    title: "Semi-Detarched Delux",
    details:
        "Super sliked and engeneered with the mindset of reliability and maximum comfort",
    price: 34000000,
    address: "T-Pumpy Court, Gwagwalada, central area",
    cartegory: Cartegory.homes,
    images: [
      "assets/images/props3.jpg",
      "assets/images/props6.jpg",
      "assets/images/props7.jpg",
      "assets/images/props8.jpg",
      "assets/images/props9.jpg",
      "assets/images/props11.jpg",
      "assets/images/props12.jpg",
    ],
    video: "assets/images/propsvideo.mp4",
    siteMap: "assets/images/map.jpg",
    housePlan: "assets/images/plan.jpg",
    eletricity: true,
    security: true,
    bedrooms: 3,
    bathrooms: 2,
    water: true,

    //CREDIBILITY
    rating: 4,
    comments: ["The Best Single detarched house i have seen"],
    //CREDEBILITY

    //PAYMENT
    installmentPlan: InstallmentPlan(
      minimumInitialPayment: 300000,
      totalCost: 34000000,
      initialPayment: 5000000,
      closingPeriod: 1,
      frequency: PaymentFrequency.monthly,
    ),
  ),
];
