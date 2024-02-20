

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: BuyboxConfig
        Used By: Serviceability
    */

    class BuyboxConfig: Codable {
        
        
        public var showSeller: Bool
        
        public var enableSelection: Bool
        
        public var isSellerBuyboxEnabled: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case showSeller = "show_seller"
            
            case enableSelection = "enable_selection"
            
            case isSellerBuyboxEnabled = "is_seller_buybox_enabled"
            
        }

        public init(enableSelection: Bool, isSellerBuyboxEnabled: Bool, showSeller: Bool) {
            
            self.showSeller = showSeller
            
            self.enableSelection = enableSelection
            
            self.isSellerBuyboxEnabled = isSellerBuyboxEnabled
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                showSeller = try container.decode(Bool.self, forKey: .showSeller)
                
            
            
            
                enableSelection = try container.decode(Bool.self, forKey: .enableSelection)
                
            
            
            
                isSellerBuyboxEnabled = try container.decode(Bool.self, forKey: .isSellerBuyboxEnabled)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(showSeller, forKey: .showSeller)
            
            
            
            
            try? container.encodeIfPresent(enableSelection, forKey: .enableSelection)
            
            
            
            
            try? container.encodeIfPresent(isSellerBuyboxEnabled, forKey: .isSellerBuyboxEnabled)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: BuyboxConfig
        Used By: Serviceability
    */

    class BuyboxConfig: Codable {
        
        
        public var showSeller: Bool
        
        public var enableSelection: Bool
        
        public var isSellerBuyboxEnabled: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case showSeller = "show_seller"
            
            case enableSelection = "enable_selection"
            
            case isSellerBuyboxEnabled = "is_seller_buybox_enabled"
            
        }

        public init(enableSelection: Bool, isSellerBuyboxEnabled: Bool, showSeller: Bool) {
            
            self.showSeller = showSeller
            
            self.enableSelection = enableSelection
            
            self.isSellerBuyboxEnabled = isSellerBuyboxEnabled
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                showSeller = try container.decode(Bool.self, forKey: .showSeller)
                
            
            
            
                enableSelection = try container.decode(Bool.self, forKey: .enableSelection)
                
            
            
            
                isSellerBuyboxEnabled = try container.decode(Bool.self, forKey: .isSellerBuyboxEnabled)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(showSeller, forKey: .showSeller)
            
            
            
            
            try? container.encodeIfPresent(enableSelection, forKey: .enableSelection)
            
            
            
            
            try? container.encodeIfPresent(isSellerBuyboxEnabled, forKey: .isSellerBuyboxEnabled)
            
            
        }
        
    }
}


