

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CardData
        Used By: Payment
    */
    class CardData: Codable {
        
        public var type: String?
        
        public var number: String?
        
        public var expirationDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case number = "number"
            
            case expirationDate = "expiration_date"
            
        }

        public init(expirationDate: String? = nil, number: String? = nil, type: String? = nil) {
            
            self.type = type
            
            self.number = number
            
            self.expirationDate = expirationDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                type = try container.decode(String.self, forKey: .type)
            
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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(number, forKey: .number)
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
        }
        
    }
}
