

import Foundation


public extension PlatformClient.Content {
    /*
        Model: AppAssociationWriteBody
        Used By: Content
    */

    class AppAssociationWriteBody: Codable {
        
        
        public var iosPayload: AppAssociationIosPayload?
        
        public var androidPayload: [AppAssociationAndroidStatement]?
        

        public enum CodingKeys: String, CodingKey {
            
            case iosPayload = "ios_payload"
            
            case androidPayload = "android_payload"
            
        }

        public init(androidPayload: [AppAssociationAndroidStatement]? = nil, iosPayload: AppAssociationIosPayload? = nil) {
            
            self.iosPayload = iosPayload
            
            self.androidPayload = androidPayload
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    iosPayload = try container.decode(AppAssociationIosPayload.self, forKey: .iosPayload)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    androidPayload = try container.decode([AppAssociationAndroidStatement].self, forKey: .androidPayload)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(iosPayload, forKey: .iosPayload)
            
            
            
            
            try? container.encodeIfPresent(androidPayload, forKey: .androidPayload)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: AppAssociationWriteBody
        Used By: Content
    */

    class AppAssociationWriteBody: Codable {
        
        
        public var iosPayload: AppAssociationIosPayload?
        
        public var androidPayload: [AppAssociationAndroidStatement]?
        

        public enum CodingKeys: String, CodingKey {
            
            case iosPayload = "ios_payload"
            
            case androidPayload = "android_payload"
            
        }

        public init(androidPayload: [AppAssociationAndroidStatement]? = nil, iosPayload: AppAssociationIosPayload? = nil) {
            
            self.iosPayload = iosPayload
            
            self.androidPayload = androidPayload
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    iosPayload = try container.decode(AppAssociationIosPayload.self, forKey: .iosPayload)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    androidPayload = try container.decode([AppAssociationAndroidStatement].self, forKey: .androidPayload)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(iosPayload, forKey: .iosPayload)
            
            
            
            
            try? container.encodeIfPresent(androidPayload, forKey: .androidPayload)
            
            
        }
        
    }
}


