

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: CreateJobsReq
        Used By: Communication
    */

    class CreateJobsReq: Codable {
        
        
        public var campaign: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case campaign = "campaign"
            
        }

        public init(campaign: String? = nil) {
            
            self.campaign = campaign
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    campaign = try container.decode(String.self, forKey: .campaign)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(campaign, forKey: .campaign)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: CreateJobsReq
        Used By: Communication
    */

    class CreateJobsReq: Codable {
        
        
        public var campaign: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case campaign = "campaign"
            
        }

        public init(campaign: String? = nil) {
            
            self.campaign = campaign
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    campaign = try container.decode(String.self, forKey: .campaign)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(campaign, forKey: .campaign)
            
            
        }
        
    }
}


