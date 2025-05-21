

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PromiseConfig
        Used By: Serviceability
    */

    class PromiseConfig: Codable {
        
        
        public var storeAttributes: StorePromiseAttributeConfig?
        
        public var deliveryServiceAttributes: DeliveryServiceAttributeConfig?
        
        public var bufferField: BufferField?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeAttributes = "store_attributes"
            
            case deliveryServiceAttributes = "delivery_service_attributes"
            
            case bufferField = "buffer_field"
            
        }

        public init(bufferField: BufferField? = nil, deliveryServiceAttributes: DeliveryServiceAttributeConfig? = nil, storeAttributes: StorePromiseAttributeConfig? = nil) {
            
            self.storeAttributes = storeAttributes
            
            self.deliveryServiceAttributes = deliveryServiceAttributes
            
            self.bufferField = bufferField
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeAttributes = try container.decode(StorePromiseAttributeConfig.self, forKey: .storeAttributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryServiceAttributes = try container.decode(DeliveryServiceAttributeConfig.self, forKey: .deliveryServiceAttributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bufferField = try container.decode(BufferField.self, forKey: .bufferField)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeAttributes, forKey: .storeAttributes)
            
            
            
            
            try? container.encodeIfPresent(deliveryServiceAttributes, forKey: .deliveryServiceAttributes)
            
            
            
            
            try? container.encodeIfPresent(bufferField, forKey: .bufferField)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PromiseConfig
        Used By: Serviceability
    */

    class PromiseConfig: Codable {
        
        
        public var storeAttributes: StorePromiseAttributeConfig?
        
        public var deliveryServiceAttributes: DeliveryServiceAttributeConfig?
        
        public var bufferField: BufferField?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeAttributes = "store_attributes"
            
            case deliveryServiceAttributes = "delivery_service_attributes"
            
            case bufferField = "buffer_field"
            
        }

        public init(bufferField: BufferField? = nil, deliveryServiceAttributes: DeliveryServiceAttributeConfig? = nil, storeAttributes: StorePromiseAttributeConfig? = nil) {
            
            self.storeAttributes = storeAttributes
            
            self.deliveryServiceAttributes = deliveryServiceAttributes
            
            self.bufferField = bufferField
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeAttributes = try container.decode(StorePromiseAttributeConfig.self, forKey: .storeAttributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryServiceAttributes = try container.decode(DeliveryServiceAttributeConfig.self, forKey: .deliveryServiceAttributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bufferField = try container.decode(BufferField.self, forKey: .bufferField)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeAttributes, forKey: .storeAttributes)
            
            
            
            
            try? container.encodeIfPresent(deliveryServiceAttributes, forKey: .deliveryServiceAttributes)
            
            
            
            
            try? container.encodeIfPresent(bufferField, forKey: .bufferField)
            
            
        }
        
    }
}


