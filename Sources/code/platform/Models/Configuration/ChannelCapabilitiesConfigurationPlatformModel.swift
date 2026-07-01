

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: ChannelCapabilities
        Used By: Configuration
    */

    class ChannelCapabilities: Codable {
        
        
        public var commerceModel: [String]
        
        public var businessFormat: [String]
        
        public var orderingSources: [OrderingSources]
        
        public var sellerModel: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case commerceModel = "commerce_model"
            
            case businessFormat = "business_format"
            
            case orderingSources = "ordering_sources"
            
            case sellerModel = "seller_model"
            
        }

        public init(businessFormat: [String], commerceModel: [String], orderingSources: [OrderingSources], sellerModel: String? = nil) {
            
            self.commerceModel = commerceModel
            
            self.businessFormat = businessFormat
            
            self.orderingSources = orderingSources
            
            self.sellerModel = sellerModel
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                commerceModel = try container.decode([String].self, forKey: .commerceModel)
                
            
            
            
                businessFormat = try container.decode([String].self, forKey: .businessFormat)
                
            
            
            
                orderingSources = try container.decode([OrderingSources].self, forKey: .orderingSources)
                
            
            
            
                do {
                    sellerModel = try container.decode(String.self, forKey: .sellerModel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(commerceModel, forKey: .commerceModel)
            
            
            
            
            try? container.encodeIfPresent(businessFormat, forKey: .businessFormat)
            
            
            
            
            try? container.encodeIfPresent(orderingSources, forKey: .orderingSources)
            
            
            
            
            try? container.encodeIfPresent(sellerModel, forKey: .sellerModel)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: ChannelCapabilities
        Used By: Configuration
    */

    class ChannelCapabilities: Codable {
        
        
        public var commerceModel: [String]
        
        public var businessFormat: [String]
        
        public var orderingSources: [OrderingSources]
        
        public var sellerModel: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case commerceModel = "commerce_model"
            
            case businessFormat = "business_format"
            
            case orderingSources = "ordering_sources"
            
            case sellerModel = "seller_model"
            
        }

        public init(businessFormat: [String], commerceModel: [String], orderingSources: [OrderingSources], sellerModel: String? = nil) {
            
            self.commerceModel = commerceModel
            
            self.businessFormat = businessFormat
            
            self.orderingSources = orderingSources
            
            self.sellerModel = sellerModel
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                commerceModel = try container.decode([String].self, forKey: .commerceModel)
                
            
            
            
                businessFormat = try container.decode([String].self, forKey: .businessFormat)
                
            
            
            
                orderingSources = try container.decode([OrderingSources].self, forKey: .orderingSources)
                
            
            
            
                do {
                    sellerModel = try container.decode(String.self, forKey: .sellerModel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(commerceModel, forKey: .commerceModel)
            
            
            
            
            try? container.encodeIfPresent(businessFormat, forKey: .businessFormat)
            
            
            
            
            try? container.encodeIfPresent(orderingSources, forKey: .orderingSources)
            
            
            
            
            try? container.encodeIfPresent(sellerModel, forKey: .sellerModel)
            
            
        }
        
    }
}


