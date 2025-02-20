

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: SectionProps
        Used By: Theme
    */
    class SectionProps: Codable {
        
        public var title: TextProp?
        
        public var itemMargin: TextProp?
        
        public var autoplay: CheckboxProp?
        
        public var slideInterval: RangeProp?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case itemMargin = "item_margin"
            
            case autoplay = "autoplay"
            
            case slideInterval = "slide_interval"
            
        }

        public init(autoplay: CheckboxProp? = nil, itemMargin: TextProp? = nil, slideInterval: RangeProp? = nil, title: TextProp? = nil) {
            
            self.title = title
            
            self.itemMargin = itemMargin
            
            self.autoplay = autoplay
            
            self.slideInterval = slideInterval
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                title = try container.decode(TextProp.self, forKey: .title)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemMargin = try container.decode(TextProp.self, forKey: .itemMargin)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                autoplay = try container.decode(CheckboxProp.self, forKey: .autoplay)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                slideInterval = try container.decode(RangeProp.self, forKey: .slideInterval)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            try? container.encodeIfPresent(itemMargin, forKey: .itemMargin)
            
            
            
            try? container.encodeIfPresent(autoplay, forKey: .autoplay)
            
            
            
            try? container.encodeIfPresent(slideInterval, forKey: .slideInterval)
            
            
        }
        
    }
}
