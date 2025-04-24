

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: BuyboxFeature
        Used By: Configuration
    */

    class BuyboxFeature: Codable {
        
        
        public var showName: Bool?
        
        public var enableSelection: Bool?
        
        public var isSellerBuyboxEnabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case showName = "show_name"
            
            case enableSelection = "enable_selection"
            
            case isSellerBuyboxEnabled = "is_seller_buybox_enabled"
            
        }

        public init(enableSelection: Bool? = nil, isSellerBuyboxEnabled: Bool? = nil, showName: Bool? = nil) {
            
            self.showName = showName
            
            self.enableSelection = enableSelection
            
            self.isSellerBuyboxEnabled = isSellerBuyboxEnabled
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    showName = try container.decode(Bool.self, forKey: .showName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enableSelection = try container.decode(Bool.self, forKey: .enableSelection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSellerBuyboxEnabled = try container.decode(Bool.self, forKey: .isSellerBuyboxEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(showName, forKey: .showName)
            
            
            
            
            try? container.encodeIfPresent(enableSelection, forKey: .enableSelection)
            
            
            
            
            try? container.encodeIfPresent(isSellerBuyboxEnabled, forKey: .isSellerBuyboxEnabled)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: BuyboxFeature
        Used By: Configuration
    */

    class BuyboxFeature: Codable {
        
        
        public var showName: Bool?
        
        public var enableSelection: Bool?
        
        public var isSellerBuyboxEnabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case showName = "show_name"
            
            case enableSelection = "enable_selection"
            
            case isSellerBuyboxEnabled = "is_seller_buybox_enabled"
            
        }

        public init(enableSelection: Bool? = nil, isSellerBuyboxEnabled: Bool? = nil, showName: Bool? = nil) {
            
            self.showName = showName
            
            self.enableSelection = enableSelection
            
            self.isSellerBuyboxEnabled = isSellerBuyboxEnabled
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    showName = try container.decode(Bool.self, forKey: .showName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enableSelection = try container.decode(Bool.self, forKey: .enableSelection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSellerBuyboxEnabled = try container.decode(Bool.self, forKey: .isSellerBuyboxEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(showName, forKey: .showName)
            
            
            
            
            try? container.encodeIfPresent(enableSelection, forKey: .enableSelection)
            
            
            
            
            try? container.encodeIfPresent(isSellerBuyboxEnabled, forKey: .isSellerBuyboxEnabled)
            
            
        }
        
    }
}


