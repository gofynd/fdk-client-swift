

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: Code
        Used By: Payment
    */

    class Code: Codable {
        
        
        public var name: String
        
        public var merchantCode: String
        
        public var code: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case merchantCode = "merchant_code"
            
            case code = "code"
            
        }

        public init(code: String, merchantCode: String, name: String) {
            
            self.name = name
            
            self.merchantCode = merchantCode
            
            self.code = code
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: Code
        Used By: Payment
    */

    class Code: Codable {
        
        
        public var name: String
        
        public var merchantCode: String
        
        public var code: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case merchantCode = "merchant_code"
            
            case code = "code"
            
        }

        public init(code: String, merchantCode: String, name: String) {
            
            self.name = name
            
            self.merchantCode = merchantCode
            
            self.code = code
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
        }
        
    }
}


