
import Foundation












public extension PlatformClient.ApplicationClient.Cart {
    
    
    /*
        Enum: OrderingSource
        Used By: Cart
    */
    enum OrderingSource: String, Codable {
        
        case storefront = "storefront"
        
        case storeOsPos = "store_os_pos"
        
        case kiosk = "kiosk"
        
        case scanGo = "scan_go"
        
        case smartTrolley = "smart_trolley"
        
        case marketplace = "marketplace"
        
        case socialCommerce = "social_commerce"
        
        case ondc = "ondc"
        
    }

    
}







public extension PlatformClient.Catalog {
    
    
    
}



public extension PlatformClient.ApplicationClient.Catalog {
    
    
    
}















public extension PlatformClient.Content {
    
    
    /*
        Enum: GenerationEntityType
        Used By: Content
    */
    enum GenerationEntityType: String, Codable {
        
        case title = "title"
        
        case description = "description"
        
    }

    
    
    
}



public extension PlatformClient.ApplicationClient.Content {
    
    
    /*
        Enum: GenerationEntityType
        Used By: Content
    */
    enum GenerationEntityType: String, Codable {
        
        case title = "title"
        
        case description = "description"
        
    }

    
    
    
}











public extension PlatformClient.Lead {
    
    
    /*
        Enum: PriorityEnum
        Used By: Lead
    */
    enum PriorityEnum: String, Codable {
        
        case low = "low"
        
        case medium = "medium"
        
        case high = "high"
        
        case urgent = "urgent"
        
    }

    
    
    /*
        Enum: HistoryTypeEnum
        Used By: Lead
    */
    enum HistoryTypeEnum: String, Codable {
        
        case rating = "rating"
        
        case log = "log"
        
        case comment = "comment"
        
        case thread = "thread"
        
    }

    
    
    /*
        Enum: TicketAssetTypeEnum
        Used By: Lead
    */
    enum TicketAssetTypeEnum: String, Codable {
        
        case image = "image"
        
        case video = "video"
        
        case file = "file"
        
        case youtube = "youtube"
        
        case product = "product"
        
        case collection = "collection"
        
        case brand = "brand"
        
        case shipment = "shipment"
        
        case order = "order"
        
    }

    
    
    /*
        Enum: TicketSourceEnum
        Used By: Lead
    */
    enum TicketSourceEnum: String, Codable {
        
        case platformPanel = "platform_panel"
        
        case salesChannel = "sales_channel"
        
    }

    
}



public extension PlatformClient.ApplicationClient.Lead {
    
    
    /*
        Enum: PriorityEnum
        Used By: Lead
    */
    enum PriorityEnum: String, Codable {
        
        case low = "low"
        
        case medium = "medium"
        
        case high = "high"
        
        case urgent = "urgent"
        
    }

    
    
    /*
        Enum: HistoryTypeEnum
        Used By: Lead
    */
    enum HistoryTypeEnum: String, Codable {
        
        case rating = "rating"
        
        case log = "log"
        
        case comment = "comment"
        
        case thread = "thread"
        
    }

    
    
    /*
        Enum: TicketAssetTypeEnum
        Used By: Lead
    */
    enum TicketAssetTypeEnum: String, Codable {
        
        case image = "image"
        
        case video = "video"
        
        case file = "file"
        
        case youtube = "youtube"
        
        case product = "product"
        
        case collection = "collection"
        
        case brand = "brand"
        
        case shipment = "shipment"
        
        case order = "order"
        
    }

    
    
    /*
        Enum: TicketSourceEnum
        Used By: Lead
    */
    enum TicketSourceEnum: String, Codable {
        
        case platformPanel = "platform_panel"
        
        case salesChannel = "sales_channel"
        
    }

    
}









public extension PlatformClient.Order {
    
    
    /*
        Enum: OrderingSource
        Used By: Order
    */
    enum OrderingSource: String, Codable {
        
        case storefront = "storefront"
        
        case storeOsPos = "store_os_pos"
        
        case kiosk = "kiosk"
        
        case scanGo = "scan_go"
        
        case smartTrolley = "smart_trolley"
        
        case gofynd = "gofynd"
        
        case uniket = "uniket"
        
        case marketplace = "marketplace"
        
        case socialCommerce = "social_commerce"
        
        case ondc = "ondc"
        
        case nexus = "nexus"
        
        case nykaaFashion = "nykaa_fashion"
        
        case etsy = "etsy"
        
        case vuivui = "vuivui"
        
        case zilingo = "zilingo"
        
        case firstcry = "firstcry"
        
        case bukalapak = "bukalapak"
        
        case myntraPpmp = "myntra_ppmp"
        
        case lazada = "lazada"
        
        case tiktok = "tiktok"
        
        case sfcc = "sfcc"
        
        case debenhams = "debenhams"
        
        case prestomall = "prestomall"
        
        case meesho = "meesho"
        
        case amazonVdf = "amazon_vdf"
        
        case bigcommerce = "bigcommerce"
        
        case sendo = "sendo"
        
        case storehippo = "storehippo"
        
        case cdiscount = "cdiscount"
        
        case nykaa = "nykaa"
        
        case trendyol = "trendyol"
        
        case weloveshopping = "weloveshopping"
        
        case jollee = "jollee"
        
        case wish = "wish"
        
        case tiki = "tiki"
        
        case centralOnline = "central_online"
        
        case q10 = "q10"
        
        case cred = "cred"
        
        case walmart = "walmart"
        
        case snapdeal = "snapdeal"
        
        case flipkart = "flipkart"
        
        case blibli = "blibli"
        
        case ajioJit = "ajio_jit"
        
        case pharmeasy = "pharmeasy"
        
        case ezmall = "ezmall"
        
        case adobeCommerce = "adobe_commerce"
        
        case kartmax = "kartmax"
        
        case shopee = "shopee"
        
        case zalora = "zalora"
        
        case prestashop = "prestashop"
        
        case smytten = "smytten"
        
        case amazonSc = "amazon_sc"
        
        case urbanpiper = "urbanpiper"
        
        case flipkartQuick = "flipkart_quick"
        
        case woocommerce = "woocommerce"
        
        case zivame = "zivame"
        
        case lelong = "lelong"
        
        case facebook = "facebook"
        
        case jiomart = "jiomart"
        
        case gmc = "gmc"
        
        case robins = "robins"
        
        case akulaku = "akulaku"
        
        case noon = "noon"
        
        case tatacliq = "tatacliq"
        
        case kartrocket = "kartrocket"
        
        case inorbit = "inorbit"
        
        case ajioBusiness = "ajio_business"
        
        case swiggy = "swiggy"
        
        case asos = "asos"
        
        case tokopedia = "tokopedia"
        
        case limeroad = "limeroad"
        
        case myntraOmni = "myntra_omni"
        
        case spoyl = "spoyl"
        
        case amazonMlf = "amazon_mlf"
        
        case fulfilledByLazada = "fulfilled_by_lazada"
        
        case ebay = "ebay"
        
        case jd = "jd"
        
        case amazonPharmacy = "amazon_pharmacy"
        
        case ajioVms = "ajio_vms"
        
        case daraz = "daraz"
        
        case oker = "oker"
        
        case flipkartB2B = "flipkart_b2b"
        
        case amazonMlfSs = "amazon_mlf_ss"
        
        case woovly = "woovly"
        
        case tata1Mg = "tata1mg"
        
        case zomato = "zomato"
        
        case shopify = "shopify"
        
    }

    
}



public extension PlatformClient.ApplicationClient.Order {
    
    
    /*
        Enum: OrderingSource
        Used By: Order
    */
    enum OrderingSource: String, Codable {
        
        case storefront = "storefront"
        
        case storeOsPos = "store_os_pos"
        
        case kiosk = "kiosk"
        
        case scanGo = "scan_go"
        
        case smartTrolley = "smart_trolley"
        
        case gofynd = "gofynd"
        
        case uniket = "uniket"
        
        case marketplace = "marketplace"
        
        case socialCommerce = "social_commerce"
        
        case ondc = "ondc"
        
        case nexus = "nexus"
        
        case nykaaFashion = "nykaa_fashion"
        
        case etsy = "etsy"
        
        case vuivui = "vuivui"
        
        case zilingo = "zilingo"
        
        case firstcry = "firstcry"
        
        case bukalapak = "bukalapak"
        
        case myntraPpmp = "myntra_ppmp"
        
        case lazada = "lazada"
        
        case tiktok = "tiktok"
        
        case sfcc = "sfcc"
        
        case debenhams = "debenhams"
        
        case prestomall = "prestomall"
        
        case meesho = "meesho"
        
        case amazonVdf = "amazon_vdf"
        
        case bigcommerce = "bigcommerce"
        
        case sendo = "sendo"
        
        case storehippo = "storehippo"
        
        case cdiscount = "cdiscount"
        
        case nykaa = "nykaa"
        
        case trendyol = "trendyol"
        
        case weloveshopping = "weloveshopping"
        
        case jollee = "jollee"
        
        case wish = "wish"
        
        case tiki = "tiki"
        
        case centralOnline = "central_online"
        
        case q10 = "q10"
        
        case cred = "cred"
        
        case walmart = "walmart"
        
        case snapdeal = "snapdeal"
        
        case flipkart = "flipkart"
        
        case blibli = "blibli"
        
        case ajioJit = "ajio_jit"
        
        case pharmeasy = "pharmeasy"
        
        case ezmall = "ezmall"
        
        case adobeCommerce = "adobe_commerce"
        
        case kartmax = "kartmax"
        
        case shopee = "shopee"
        
        case zalora = "zalora"
        
        case prestashop = "prestashop"
        
        case smytten = "smytten"
        
        case amazonSc = "amazon_sc"
        
        case urbanpiper = "urbanpiper"
        
        case flipkartQuick = "flipkart_quick"
        
        case woocommerce = "woocommerce"
        
        case zivame = "zivame"
        
        case lelong = "lelong"
        
        case facebook = "facebook"
        
        case jiomart = "jiomart"
        
        case gmc = "gmc"
        
        case robins = "robins"
        
        case akulaku = "akulaku"
        
        case noon = "noon"
        
        case tatacliq = "tatacliq"
        
        case kartrocket = "kartrocket"
        
        case inorbit = "inorbit"
        
        case ajioBusiness = "ajio_business"
        
        case swiggy = "swiggy"
        
        case asos = "asos"
        
        case tokopedia = "tokopedia"
        
        case limeroad = "limeroad"
        
        case myntraOmni = "myntra_omni"
        
        case spoyl = "spoyl"
        
        case amazonMlf = "amazon_mlf"
        
        case fulfilledByLazada = "fulfilled_by_lazada"
        
        case ebay = "ebay"
        
        case jd = "jd"
        
        case amazonPharmacy = "amazon_pharmacy"
        
        case ajioVms = "ajio_vms"
        
        case daraz = "daraz"
        
        case oker = "oker"
        
        case flipkartB2B = "flipkart_b2b"
        
        case amazonMlfSs = "amazon_mlf_ss"
        
        case woovly = "woovly"
        
        case tata1Mg = "tata1mg"
        
        case zomato = "zomato"
        
        case shopify = "shopify"
        
    }

    
}















public extension PlatformClient.Theme {
    
    
    
}



public extension PlatformClient.ApplicationClient.Theme {
    
    
    
}









public extension PlatformClient.Webhook {
    
    
    /*
        Enum: SubscriberStatus
        Used By: Webhook
    */
    enum SubscriberStatus: String, Codable {
        
        case active = "active"
        
        case inactive = "inactive"
        
    }

    
}





