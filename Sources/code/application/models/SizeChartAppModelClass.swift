

import Foundation
public extension ApplicationClient {
    /*
         Model: SizeChart
         Used By: Catalog
     */
    class SizeChart: Codable {
        public var image: String?

        public var description: String?

        public var title: String?

        public var unit: String?

        public var sizeTip: String?

        public var headers: ColumnHeaders?

        public var sizes: [SizeChartValues]?

        public enum CodingKeys: String, CodingKey {
            case image

            case description

            case title

            case unit

            case sizeTip = "size_tip"

            case headers

            case sizes
        }

        public init(description: String? = nil, headers: ColumnHeaders? = nil, image: String? = nil, sizes: [SizeChartValues]? = nil, sizeTip: String? = nil, title: String? = nil, unit: String? = nil) {
            self.image = image

            self.description = description

            self.title = title

            self.unit = unit

            self.sizeTip = sizeTip

            self.headers = headers

            self.sizes = sizes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                image = try container.decode(String.self, forKey: .image)

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
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeTip = try container.decode(String.self, forKey: .sizeTip)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headers = try container.decode(ColumnHeaders.self, forKey: .headers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([SizeChartValues].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(sizeTip, forKey: .sizeTip)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
        }
    }
}
