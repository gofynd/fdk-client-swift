

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: BlockProps
        Used By: Theme
    */
    class BlockProps: Codable {
        
        public var image: ImagePickerProp?
        
        public var slideLink: UrlProp?
        

        public enum CodingKeys: String, CodingKey {
            
            case image = "image"
            
            case slideLink = "slide_link"
            
        }

        public init(image: ImagePickerProp? = nil, slideLink: UrlProp? = nil) {
            
            self.image = image
            
            self.slideLink = slideLink
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                image = try container.decode(ImagePickerProp.self, forKey: .image)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                slideLink = try container.decode(UrlProp.self, forKey: .slideLink)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            try? container.encodeIfPresent(slideLink, forKey: .slideLink)
            
            
        }
        
    }
}
