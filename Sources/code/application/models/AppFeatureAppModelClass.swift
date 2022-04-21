

import Foundation
public extension ApplicationClient {
    /*
         Model: AppFeature
         Used By: Configuration
     */
    class AppFeature: Codable {
        public var productDetail: ProductDetailFeature?

        public var landingPage: LandingPageFeature?

        public var registrationPage: RegistrationPageFeature?

        public var homePage: HomePageFeature?

        public var common: CommonFeature?

        public var cart: CartFeature?

        public var qr: QrFeature?

        public var pcr: PcrFeature?

        public var order: OrderFeature?

        public var id: String?

        public var app: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case productDetail = "product_detail"

            case landingPage = "landing_page"

            case registrationPage = "registration_page"

            case homePage = "home_page"

            case common

            case cart

            case qr

            case pcr

            case order

            case id = "_id"

            case app

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"
        }

        public init(app: String? = nil, cart: CartFeature? = nil, common: CommonFeature? = nil, createdAt: String? = nil, homePage: HomePageFeature? = nil, landingPage: LandingPageFeature? = nil, order: OrderFeature? = nil, pcr: PcrFeature? = nil, productDetail: ProductDetailFeature? = nil, qr: QrFeature? = nil, registrationPage: RegistrationPageFeature? = nil, updatedAt: String? = nil, id: String? = nil, v: Int? = nil) {
            self.productDetail = productDetail

            self.landingPage = landingPage

            self.registrationPage = registrationPage

            self.homePage = homePage

            self.common = common

            self.cart = cart

            self.qr = qr

            self.pcr = pcr

            self.order = order

            self.id = id

            self.app = app

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                productDetail = try container.decode(ProductDetailFeature.self, forKey: .productDetail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landingPage = try container.decode(LandingPageFeature.self, forKey: .landingPage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                registrationPage = try container.decode(RegistrationPageFeature.self, forKey: .registrationPage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                homePage = try container.decode(HomePageFeature.self, forKey: .homePage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                common = try container.decode(CommonFeature.self, forKey: .common)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cart = try container.decode(CartFeature.self, forKey: .cart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                qr = try container.decode(QrFeature.self, forKey: .qr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pcr = try container.decode(PcrFeature.self, forKey: .pcr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                order = try container.decode(OrderFeature.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                app = try container.decode(String.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productDetail, forKey: .productDetail)

            try? container.encodeIfPresent(landingPage, forKey: .landingPage)

            try? container.encodeIfPresent(registrationPage, forKey: .registrationPage)

            try? container.encodeIfPresent(homePage, forKey: .homePage)

            try? container.encodeIfPresent(common, forKey: .common)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(qr, forKey: .qr)

            try? container.encodeIfPresent(pcr, forKey: .pcr)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }
}
