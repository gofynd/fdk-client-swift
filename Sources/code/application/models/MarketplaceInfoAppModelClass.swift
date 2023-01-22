

import Foundation
public extension ApplicationClient {
    /*
        Model: MarketplaceInfo
        Used By: Payment
    */
    class MarketplaceInfo: Codable {
        
        public var name: String
        
        public var dateOfJoining: String?
        
        public var membershipId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case dateOfJoining = "date_of_joining"
            
            case membershipId = "membership_id"
            
        }

        public init(dateOfJoining: String? = nil, membershipId: String, name: String) {
            
            self.name = name
            
            self.dateOfJoining = dateOfJoining
            
            self.membershipId = membershipId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            name = try container.decode(String.self, forKey: .name)
            
            
            
            
            do {
                dateOfJoining = try container.decode(String.self, forKey: .dateOfJoining)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            membershipId = try container.decode(String.self, forKey: .membershipId)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encode(dateOfJoining, forKey: .dateOfJoining)
            
            
            
            
            try? container.encodeIfPresent(membershipId, forKey: .membershipId)
            
            
        }
        
    }
}
