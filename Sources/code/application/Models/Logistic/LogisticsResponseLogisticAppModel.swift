

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: LogisticsResponse
        Used By: Logistic
    */
    class LogisticsResponse: Codable {
        
        public var dp: [String: DP]?
        

        public enum CodingKeys: String, CodingKey {
            
            case dp = "dp"
            
        }

        public init(dp: [String: DP]? = nil) {
            
            self.dp = dp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                dp = try container.decode([String: DP].self, forKey: .dp)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(dp, forKey: .dp)
            
            
        }
        
    }
}
