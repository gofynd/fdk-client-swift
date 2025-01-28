

import Foundation
public extension PublicClient.Billing {
    /*
        Model: OneTimeFees
        Used By: Billing
    */

    class OneTimeFees: Codable {
        
        
        public var developement: Int?
        
        public var marketing: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case developement = "developement"
            
            case marketing = "marketing"
            
        }

        public init(developement: Int? = nil, marketing: Int? = nil) {
            
            self.developement = developement
            
            self.marketing = marketing
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    developement = try container.decode(Int.self, forKey: .developement)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketing = try container.decode(Int.self, forKey: .marketing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(developement, forKey: .developement)
            
            
            
            try? container.encodeIfPresent(marketing, forKey: .marketing)
            
            
        }
        
    }
}
