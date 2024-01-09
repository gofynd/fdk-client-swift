

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: Meta
        Used By: Theme
    */
    class Meta: Codable {
        
        public var payment: ThemePayment?
        
        public var description: String?
        
        public var industry: [String]?
        
        public var release: Release?
        
        public var images: Images?
        
        public var slug: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case payment = "payment"
            
            case description = "description"
            
            case industry = "industry"
            
            case release = "release"
            
            case images = "images"
            
            case slug = "slug"
            
            case name = "name"
            
        }

        public init(description: String? = nil, images: Images? = nil, industry: [String]? = nil, name: String? = nil, payment: ThemePayment? = nil, release: Release? = nil, slug: String? = nil) {
            
            self.payment = payment
            
            self.description = description
            
            self.industry = industry
            
            self.release = release
            
            self.images = images
            
            self.slug = slug
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                payment = try container.decode(ThemePayment.self, forKey: .payment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                description = try container.decode(String.self, forKey: .description)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                industry = try container.decode([String].self, forKey: .industry)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                release = try container.decode(Release.self, forKey: .release)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                images = try container.decode(Images.self, forKey: .images)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                slug = try container.decode(String.self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(industry, forKey: .industry)
            
            
            
            
            try? container.encodeIfPresent(release, forKey: .release)
            
            
            
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}
