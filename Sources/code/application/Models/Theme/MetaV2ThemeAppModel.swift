

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: MetaV2
         Used By: Theme
     */
    class MetaV2: Codable {
        public var payment: PaymentV2?

        public var description: String?

        public var industry: [String]?

        public var release: ReleaseV2?

        public var images: ImagesV2?

        public var slug: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case payment

            case description

            case industry

            case release

            case images

            case slug

            case name
        }

        public init(description: String? = nil, images: ImagesV2? = nil, industry: [String]? = nil, name: String? = nil, payment: PaymentV2? = nil, release: ReleaseV2? = nil, slug: String? = nil) {
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
                payment = try container.decode(PaymentV2.self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                industry = try container.decode([String].self, forKey: .industry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                release = try container.decode(ReleaseV2.self, forKey: .release)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                images = try container.decode(ImagesV2.self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
