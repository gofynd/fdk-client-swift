

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreateAppPriceFactoryProductExportJobRequest
        Used By: Catalog
    */

    class CreateAppPriceFactoryProductExportJobRequest: Codable {
        
        
        public var sampleWithData: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case sampleWithData = "sample_with_data"
            
        }

        public init(sampleWithData: Bool? = nil) {
            
            self.sampleWithData = sampleWithData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sampleWithData = try container.decode(Bool.self, forKey: .sampleWithData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sampleWithData, forKey: .sampleWithData)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CreateAppPriceFactoryProductExportJobRequest
        Used By: Catalog
    */

    class CreateAppPriceFactoryProductExportJobRequest: Codable {
        
        
        public var sampleWithData: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case sampleWithData = "sample_with_data"
            
        }

        public init(sampleWithData: Bool? = nil) {
            
            self.sampleWithData = sampleWithData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sampleWithData = try container.decode(Bool.self, forKey: .sampleWithData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sampleWithData, forKey: .sampleWithData)
            
            
        }
        
    }
}


