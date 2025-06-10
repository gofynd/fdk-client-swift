

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: FulfillmentOptionBulkValidate
        Used By: Serviceability
    */

    class FulfillmentOptionBulkValidate: Codable {
        
        
        public var storeType: String?
        
        public var filePath: String?
        
        public var action: String?
        
        public var type: String?
        
        public var fulfillmentOptionSlug: String?
        
        public var request: FulfillmentOptionValidate?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeType = "store_type"
            
            case filePath = "file_path"
            
            case action = "action"
            
            case type = "type"
            
            case fulfillmentOptionSlug = "fulfillment_option_slug"
            
            case request = "request"
            
        }

        public init(action: String? = nil, filePath: String? = nil, fulfillmentOptionSlug: String? = nil, request: FulfillmentOptionValidate? = nil, storeType: String? = nil, type: String? = nil) {
            
            self.storeType = storeType
            
            self.filePath = filePath
            
            self.action = action
            
            self.type = type
            
            self.fulfillmentOptionSlug = fulfillmentOptionSlug
            
            self.request = request
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeType = try container.decode(String.self, forKey: .storeType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentOptionSlug = try container.decode(String.self, forKey: .fulfillmentOptionSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    request = try container.decode(FulfillmentOptionValidate.self, forKey: .request)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentOptionSlug, forKey: .fulfillmentOptionSlug)
            
            
            
            
            try? container.encodeIfPresent(request, forKey: .request)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: FulfillmentOptionBulkValidate
        Used By: Serviceability
    */

    class FulfillmentOptionBulkValidate: Codable {
        
        
        public var storeType: String?
        
        public var filePath: String?
        
        public var action: String?
        
        public var type: String?
        
        public var fulfillmentOptionSlug: String?
        
        public var request: FulfillmentOptionValidate?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeType = "store_type"
            
            case filePath = "file_path"
            
            case action = "action"
            
            case type = "type"
            
            case fulfillmentOptionSlug = "fulfillment_option_slug"
            
            case request = "request"
            
        }

        public init(action: String? = nil, filePath: String? = nil, fulfillmentOptionSlug: String? = nil, request: FulfillmentOptionValidate? = nil, storeType: String? = nil, type: String? = nil) {
            
            self.storeType = storeType
            
            self.filePath = filePath
            
            self.action = action
            
            self.type = type
            
            self.fulfillmentOptionSlug = fulfillmentOptionSlug
            
            self.request = request
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeType = try container.decode(String.self, forKey: .storeType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentOptionSlug = try container.decode(String.self, forKey: .fulfillmentOptionSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    request = try container.decode(FulfillmentOptionValidate.self, forKey: .request)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentOptionSlug, forKey: .fulfillmentOptionSlug)
            
            
            
            
            try? container.encodeIfPresent(request, forKey: .request)
            
            
        }
        
    }
}


