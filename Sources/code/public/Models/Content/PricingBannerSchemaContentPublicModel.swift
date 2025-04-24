

import Foundation
public extension PublicClient.Content {
    /*
        Model: PricingBannerSchema
        Used By: Content
    */

    class PricingBannerSchema: Codable {
        
        
        public var id: String?
        
        public var webBanner: MediaSchema?
        
        public var mobileBanner: MediaSchema?
        
        public var published: Bool?
        
        public var createdBy: CreatedBySchema?
        
        public var modifiedBy: CreatedBySchema?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case webBanner = "web_banner"
            
            case mobileBanner = "mobile_banner"
            
            case published = "published"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case v = "__v"
            
        }

        public init(createdBy: CreatedBySchema? = nil, createdOn: String? = nil, mobileBanner: MediaSchema? = nil, modifiedBy: CreatedBySchema? = nil, modifiedOn: String? = nil, published: Bool? = nil, webBanner: MediaSchema? = nil, id: String? = nil, v: Int? = nil) {
            
            self.id = id
            
            self.webBanner = webBanner
            
            self.mobileBanner = mobileBanner
            
            self.published = published
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    webBanner = try container.decode(MediaSchema.self, forKey: .webBanner)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobileBanner = try container.decode(MediaSchema.self, forKey: .mobileBanner)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    published = try container.decode(Bool.self, forKey: .published)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(CreatedBySchema.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(CreatedBySchema.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(webBanner, forKey: .webBanner)
            
            
            
            try? container.encodeIfPresent(mobileBanner, forKey: .mobileBanner)
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}
