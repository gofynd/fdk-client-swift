

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: GetQCPromiseDetails
        Used By: Logistic
    */
    class GetQCPromiseDetails: Codable {
        
        public var journey: String?
        
        public var tatMin: String?
        
        public var tatMax: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case journey = "journey"
            
            case tatMin = "tat_min"
            
            case tatMax = "tat_max"
            
            case message = "message"
            
        }

        public init(journey: String? = nil, message: String? = nil, tatMax: String? = nil, tatMin: String? = nil) {
            
            self.journey = journey
            
            self.tatMin = tatMin
            
            self.tatMax = tatMax
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                journey = try container.decode(String.self, forKey: .journey)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                tatMin = try container.decode(String.self, forKey: .tatMin)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                tatMax = try container.decode(String.self, forKey: .tatMax)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            try? container.encodeIfPresent(tatMin, forKey: .tatMin)
            
            
            
            try? container.encodeIfPresent(tatMax, forKey: .tatMax)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}
