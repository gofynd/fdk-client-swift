

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: FulfillmentOptionValidate
        Used By: Serviceability
    */

    class FulfillmentOptionValidate: Codable {
        
        
        public var entityFilterType: String?
        
        public var fulfillmentOptionType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case entityFilterType = "entity_filter_type"
            
            case fulfillmentOptionType = "fulfillment_option_type"
            
        }

        public init(entityFilterType: String? = nil, fulfillmentOptionType: String? = nil) {
            
            self.entityFilterType = entityFilterType
            
            self.fulfillmentOptionType = fulfillmentOptionType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    entityFilterType = try container.decode(String.self, forKey: .entityFilterType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentOptionType = try container.decode(String.self, forKey: .fulfillmentOptionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(entityFilterType, forKey: .entityFilterType)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentOptionType, forKey: .fulfillmentOptionType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: FulfillmentOptionValidate
        Used By: Serviceability
    */

    class FulfillmentOptionValidate: Codable {
        
        
        public var entityFilterType: String?
        
        public var fulfillmentOptionType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case entityFilterType = "entity_filter_type"
            
            case fulfillmentOptionType = "fulfillment_option_type"
            
        }

        public init(entityFilterType: String? = nil, fulfillmentOptionType: String? = nil) {
            
            self.entityFilterType = entityFilterType
            
            self.fulfillmentOptionType = fulfillmentOptionType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    entityFilterType = try container.decode(String.self, forKey: .entityFilterType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentOptionType = try container.decode(String.self, forKey: .fulfillmentOptionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(entityFilterType, forKey: .entityFilterType)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentOptionType, forKey: .fulfillmentOptionType)
            
            
        }
        
    }
}


