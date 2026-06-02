

import Foundation


public extension PlatformClient.Content {
    /*
        Model: AppAssociationRecord
        Used By: Content
    */

    class AppAssociationRecord: Codable {
        
        
        public var iosPayload: AppAssociationIosPayload?
        
        public var androidPayload: [AppAssociationAndroidStatement]?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var createdBy: String?
        
        public var modifiedBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case iosPayload = "ios_payload"
            
            case androidPayload = "android_payload"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
        }

        public init(androidPayload: [AppAssociationAndroidStatement]? = nil, createdAt: String? = nil, createdBy: String? = nil, iosPayload: AppAssociationIosPayload? = nil, modifiedBy: String? = nil, updatedAt: String? = nil) {
            
            self.iosPayload = iosPayload
            
            self.androidPayload = androidPayload
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
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
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
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
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: AppAssociationRecord
        Used By: Content
    */

    class AppAssociationRecord: Codable {
        
        
        public var iosPayload: AppAssociationIosPayload?
        
        public var androidPayload: [AppAssociationAndroidStatement]?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var createdBy: String?
        
        public var modifiedBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case iosPayload = "ios_payload"
            
            case androidPayload = "android_payload"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
        }

        public init(androidPayload: [AppAssociationAndroidStatement]? = nil, createdAt: String? = nil, createdBy: String? = nil, iosPayload: AppAssociationIosPayload? = nil, modifiedBy: String? = nil, updatedAt: String? = nil) {
            
            self.iosPayload = iosPayload
            
            self.androidPayload = androidPayload
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
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
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
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
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
}


