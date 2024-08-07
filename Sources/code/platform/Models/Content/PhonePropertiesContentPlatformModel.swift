

import Foundation


public extension PlatformClient.Content {
    /*
        Model: PhoneProperties
        Used By: Content
    */

    class PhoneProperties: Codable {
        
        
        public var key: String?
        
        public var code: String?
        
        public var number: String?
        
        public var phoneType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case code = "code"
            
            case number = "number"
            
            case phoneType = "phone_type"
            
        }

        public init(code: String? = nil, key: String? = nil, number: String? = nil, phoneType: String? = nil) {
            
            self.key = key
            
            self.code = code
            
            self.number = number
            
            self.phoneType = phoneType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    number = try container.decode(String.self, forKey: .number)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phoneType = try container.decode(String.self, forKey: .phoneType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(number, forKey: .number)
            
            
            
            
            try? container.encodeIfPresent(phoneType, forKey: .phoneType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: PhoneProperties
        Used By: Content
    */

    class PhoneProperties: Codable {
        
        
        public var key: String?
        
        public var code: String?
        
        public var number: String?
        
        public var phoneType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case code = "code"
            
            case number = "number"
            
            case phoneType = "phone_type"
            
        }

        public init(code: String? = nil, key: String? = nil, number: String? = nil, phoneType: String? = nil) {
            
            self.key = key
            
            self.code = code
            
            self.number = number
            
            self.phoneType = phoneType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    number = try container.decode(String.self, forKey: .number)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phoneType = try container.decode(String.self, forKey: .phoneType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(number, forKey: .number)
            
            
            
            
            try? container.encodeIfPresent(phoneType, forKey: .phoneType)
            
            
        }
        
    }
}


