

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: TATPromiseResult
        Used By: Logistic
    */
    class TATPromiseResult: Codable {
        
        public var timestamp: TATTimestampResult?
        
        public var formatted: TATFormattedResult?
        

        public enum CodingKeys: String, CodingKey {
            
            case timestamp = "timestamp"
            
            case formatted = "formatted"
            
        }

        public init(formatted: TATFormattedResult? = nil, timestamp: TATTimestampResult? = nil) {
            
            self.timestamp = timestamp
            
            self.formatted = formatted
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                timestamp = try container.decode(TATTimestampResult.self, forKey: .timestamp)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                formatted = try container.decode(TATFormattedResult.self, forKey: .formatted)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            
            
            try? container.encodeIfPresent(formatted, forKey: .formatted)
            
            
        }
        
    }
}
