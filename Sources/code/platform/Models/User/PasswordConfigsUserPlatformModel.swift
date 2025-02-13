

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: PasswordConfigs
        Used By: User
    */

    class PasswordConfigs: Codable {
        
        
        public var length: Double?
        
        public var requireSpecialCharacter: Bool?
        
        public var requireNumber: Bool?
        
        public var requireCapitalCharacter: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case length = "length"
            
            case requireSpecialCharacter = "require_special_character"
            
            case requireNumber = "require_number"
            
            case requireCapitalCharacter = "require_capital_character"
            
        }

        public init(length: Double? = nil, requireCapitalCharacter: Bool? = nil, requireNumber: Bool? = nil, requireSpecialCharacter: Bool? = nil) {
            
            self.length = length
            
            self.requireSpecialCharacter = requireSpecialCharacter
            
            self.requireNumber = requireNumber
            
            self.requireCapitalCharacter = requireCapitalCharacter
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    length = try container.decode(Double.self, forKey: .length)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    requireSpecialCharacter = try container.decode(Bool.self, forKey: .requireSpecialCharacter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    requireNumber = try container.decode(Bool.self, forKey: .requireNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    requireCapitalCharacter = try container.decode(Bool.self, forKey: .requireCapitalCharacter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(requireSpecialCharacter, forKey: .requireSpecialCharacter)
            
            
            
            
            try? container.encodeIfPresent(requireNumber, forKey: .requireNumber)
            
            
            
            
            try? container.encodeIfPresent(requireCapitalCharacter, forKey: .requireCapitalCharacter)
            
            
        }
        
    }
}


