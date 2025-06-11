

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: BulkZoneOverrideSchema
        Used By: Serviceability
    */

    class BulkZoneOverrideSchema: Codable {
        
        
        public var allowOverride: Bool?
        
        public var overriddingCorrectionFileUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case allowOverride = "allow_override"
            
            case overriddingCorrectionFileUrl = "overridding_correction_file_url"
            
        }

        public init(allowOverride: Bool? = nil, overriddingCorrectionFileUrl: String? = nil) {
            
            self.allowOverride = allowOverride
            
            self.overriddingCorrectionFileUrl = overriddingCorrectionFileUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    allowOverride = try container.decode(Bool.self, forKey: .allowOverride)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    overriddingCorrectionFileUrl = try container.decode(String.self, forKey: .overriddingCorrectionFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(allowOverride, forKey: .allowOverride)
            
            
            
            
            try? container.encodeIfPresent(overriddingCorrectionFileUrl, forKey: .overriddingCorrectionFileUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: BulkZoneOverrideSchema
        Used By: Serviceability
    */

    class BulkZoneOverrideSchema: Codable {
        
        
        public var allowOverride: Bool?
        
        public var overriddingCorrectionFileUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case allowOverride = "allow_override"
            
            case overriddingCorrectionFileUrl = "overridding_correction_file_url"
            
        }

        public init(allowOverride: Bool? = nil, overriddingCorrectionFileUrl: String? = nil) {
            
            self.allowOverride = allowOverride
            
            self.overriddingCorrectionFileUrl = overriddingCorrectionFileUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    allowOverride = try container.decode(Bool.self, forKey: .allowOverride)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    overriddingCorrectionFileUrl = try container.decode(String.self, forKey: .overriddingCorrectionFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(allowOverride, forKey: .allowOverride)
            
            
            
            
            try? container.encodeIfPresent(overriddingCorrectionFileUrl, forKey: .overriddingCorrectionFileUrl)
            
            
        }
        
    }
}


