

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: TATPromiseResponseSchema
        Used By: Logistic
    */
    class TATPromiseResponseSchema: Codable {
        
        public var timestamp: TATTimestampResponseSchema?
        
        public var formatted: TATFormattedResponseSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case timestamp = "timestamp"
            
            case formatted = "formatted"
            
        }

        public init(formatted: TATFormattedResponseSchema? = nil, timestamp: TATTimestampResponseSchema? = nil) {
            
            self.timestamp = timestamp
            
            self.formatted = formatted
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                timestamp = try container.decode(TATTimestampResponseSchema.self, forKey: .timestamp)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                formatted = try container.decode(TATFormattedResponseSchema.self, forKey: .formatted)
            
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
