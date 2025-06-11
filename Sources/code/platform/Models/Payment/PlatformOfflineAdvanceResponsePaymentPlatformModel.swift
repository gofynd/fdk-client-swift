

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PlatformOfflineAdvanceResponse
        Used By: Payment
    */

    class PlatformOfflineAdvanceResponse: Codable {
        
        
        public var success: Bool?
        
        public var isActive: Bool?
        
        public var message: String?
        
        public var items: [OfflineAdvanceConfigurationItem]?
        
        public var errors: ErrorCodeAndDescription?
        
        public var error: ErrorCodeAndDescription?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case isActive = "is_active"
            
            case message = "message"
            
            case items = "items"
            
            case errors = "errors"
            
            case error = "error"
            
        }

        public init(error: ErrorCodeAndDescription? = nil, errors: ErrorCodeAndDescription? = nil, isActive: Bool? = nil, items: [OfflineAdvanceConfigurationItem]? = nil, message: String? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.isActive = isActive
            
            self.message = message
            
            self.items = items
            
            self.errors = errors
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([OfflineAdvanceConfigurationItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errors = try container.decode(ErrorCodeAndDescription.self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode(ErrorCodeAndDescription.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PlatformOfflineAdvanceResponse
        Used By: Payment
    */

    class PlatformOfflineAdvanceResponse: Codable {
        
        
        public var success: Bool?
        
        public var isActive: Bool?
        
        public var message: String?
        
        public var items: [OfflineAdvanceConfigurationItem]?
        
        public var errors: ErrorCodeAndDescription?
        
        public var error: ErrorCodeAndDescription?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case isActive = "is_active"
            
            case message = "message"
            
            case items = "items"
            
            case errors = "errors"
            
            case error = "error"
            
        }

        public init(error: ErrorCodeAndDescription? = nil, errors: ErrorCodeAndDescription? = nil, isActive: Bool? = nil, items: [OfflineAdvanceConfigurationItem]? = nil, message: String? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.isActive = isActive
            
            self.message = message
            
            self.items = items
            
            self.errors = errors
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([OfflineAdvanceConfigurationItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errors = try container.decode(ErrorCodeAndDescription.self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode(ErrorCodeAndDescription.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}


