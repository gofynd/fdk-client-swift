

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: LocationValidation
        Used By: Catalog
    */

    class LocationValidation: Codable {
        
        
        public var gstRequired: Bool?
        
        public var stage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case gstRequired = "gst_required"
            
            case stage = "stage"
            
        }

        public init(gstRequired: Bool? = nil, stage: String? = nil) {
            
            self.gstRequired = gstRequired
            
            self.stage = stage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gstRequired = try container.decode(Bool.self, forKey: .gstRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gstRequired, forKey: .gstRequired)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: LocationValidation
        Used By: Catalog
    */

    class LocationValidation: Codable {
        
        
        public var gstRequired: Bool?
        
        public var stage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case gstRequired = "gst_required"
            
            case stage = "stage"
            
        }

        public init(gstRequired: Bool? = nil, stage: String? = nil) {
            
            self.gstRequired = gstRequired
            
            self.stage = stage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gstRequired = try container.decode(Bool.self, forKey: .gstRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gstRequired, forKey: .gstRequired)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
}


