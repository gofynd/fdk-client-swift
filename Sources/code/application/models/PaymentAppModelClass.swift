import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: AggregatorConfigDetail
         Used By: Payment
     */
    class AggregatorConfigDetail: Codable {
        public var merchantId: String?

        public var pin: String?

        public var sdk: Bool?

        public var api: String?

        public var secret: String

        public var userId: String?

        public var configType: String

        public var key: String

        public var merchantKey: String?

        public var verifyApi: String?

        public enum CodingKeys: String, CodingKey {
            case merchantId = "merchant_id"

            case pin

            case sdk

            case api

            case secret

            case userId = "user_id"

            case configType = "config_type"

            case key

            case merchantKey = "merchant_key"

            case verifyApi = "verify_api"
        }

        public init(api: String?, configType: String, key: String, merchantId: String?, merchantKey: String?, pin: String?, sdk: Bool?, secret: String, userId: String?, verifyApi: String?) {
            self.merchantId = merchantId

            self.pin = pin

            self.sdk = sdk

            self.api = api

            self.secret = secret

            self.userId = userId

            self.configType = configType

            self.key = key

            self.merchantKey = merchantKey

            self.verifyApi = verifyApi
        }

        public func duplicate() -> AggregatorConfigDetail {
            let dict = self.dictionary!
            let copy = AggregatorConfigDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                merchantId = try container.decode(String.self, forKey: .merchantId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pin = try container.decode(String.self, forKey: .pin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sdk = try container.decode(Bool.self, forKey: .sdk)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                api = try container.decode(String.self, forKey: .api)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            secret = try container.decode(String.self, forKey: .secret)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            key = try container.decode(String.self, forKey: .key)

            do {
                merchantKey = try container.decode(String.self, forKey: .merchantKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifyApi = try container.decode(String.self, forKey: .verifyApi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(merchantId, forKey: .merchantId)

            try? container.encode(pin, forKey: .pin)

            try? container.encode(sdk, forKey: .sdk)

            try? container.encode(api, forKey: .api)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encode(userId, forKey: .userId)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encode(merchantKey, forKey: .merchantKey)

            try? container.encode(verifyApi, forKey: .verifyApi)
        }
    }

    /*
         Model: AggregatorsConfigDetailResponse
         Used By: Payment
     */
    class AggregatorsConfigDetailResponse: Codable {
        public var env: String

        public var razorpay: AggregatorConfigDetail?

        public var simpl: AggregatorConfigDetail?

        public var juspay: AggregatorConfigDetail?

        public var payumoney: AggregatorConfigDetail?

        public var rupifi: AggregatorConfigDetail?

        public var stripe: AggregatorConfigDetail?

        public var ccavenue: AggregatorConfigDetail?

        public var success: Bool

        public var mswipe: AggregatorConfigDetail?

        public enum CodingKeys: String, CodingKey {
            case env

            case razorpay

            case simpl

            case juspay

            case payumoney

            case rupifi

            case stripe

            case ccavenue

            case success

            case mswipe
        }

        public init(ccavenue: AggregatorConfigDetail?, env: String, juspay: AggregatorConfigDetail?, mswipe: AggregatorConfigDetail?, payumoney: AggregatorConfigDetail?, razorpay: AggregatorConfigDetail?, rupifi: AggregatorConfigDetail?, simpl: AggregatorConfigDetail?, stripe: AggregatorConfigDetail?, success: Bool) {
            self.env = env

            self.razorpay = razorpay

            self.simpl = simpl

            self.juspay = juspay

            self.payumoney = payumoney

            self.rupifi = rupifi

            self.stripe = stripe

            self.ccavenue = ccavenue

            self.success = success

            self.mswipe = mswipe
        }

        public func duplicate() -> AggregatorsConfigDetailResponse {
            let dict = self.dictionary!
            let copy = AggregatorsConfigDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            env = try container.decode(String.self, forKey: .env)

            do {
                razorpay = try container.decode(AggregatorConfigDetail.self, forKey: .razorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                simpl = try container.decode(AggregatorConfigDetail.self, forKey: .simpl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                juspay = try container.decode(AggregatorConfigDetail.self, forKey: .juspay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payumoney = try container.decode(AggregatorConfigDetail.self, forKey: .payumoney)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rupifi = try container.decode(AggregatorConfigDetail.self, forKey: .rupifi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stripe = try container.decode(AggregatorConfigDetail.self, forKey: .stripe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ccavenue = try container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                mswipe = try container.decode(AggregatorConfigDetail.self, forKey: .mswipe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(env, forKey: .env)

            try? container.encodeIfPresent(razorpay, forKey: .razorpay)

            try? container.encodeIfPresent(simpl, forKey: .simpl)

            try? container.encodeIfPresent(juspay, forKey: .juspay)

            try? container.encodeIfPresent(payumoney, forKey: .payumoney)

            try? container.encodeIfPresent(rupifi, forKey: .rupifi)

            try? container.encodeIfPresent(stripe, forKey: .stripe)

            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(mswipe, forKey: .mswipe)
        }
    }

    /*
         Model: ErrorCodeAndDescription
         Used By: Payment
     */
    class ErrorCodeAndDescription: Codable {
        public var code: String

        public var description: String

        public enum CodingKeys: String, CodingKey {
            case code

            case description
        }

        public init(code: String, description: String) {
            self.code = code

            self.description = description
        }

        public func duplicate() -> ErrorCodeAndDescription {
            let dict = self.dictionary!
            let copy = ErrorCodeAndDescription(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            description = try container.decode(String.self, forKey: .description)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }

    /*
         Model: HttpErrorCodeAndResponse
         Used By: Payment
     */
    class HttpErrorCodeAndResponse: Codable {
        public var error: ErrorCodeAndDescription

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case error

            case success
        }

        public init(error: ErrorCodeAndDescription, success: Bool) {
            self.error = error

            self.success = success
        }

        public func duplicate() -> HttpErrorCodeAndResponse {
            let dict = self.dictionary!
            let copy = HttpErrorCodeAndResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode(ErrorCodeAndDescription.self, forKey: .error)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: AttachCardRequest
         Used By: Payment
     */
    class AttachCardRequest: Codable {
        public var refresh: Bool?

        public var nickname: String?

        public var nameOnCard: String?

        public var cardId: String

        public enum CodingKeys: String, CodingKey {
            case refresh

            case nickname

            case nameOnCard = "name_on_card"

            case cardId = "card_id"
        }

        public init(cardId: String, nameOnCard: String?, nickname: String?, refresh: Bool?) {
            self.refresh = refresh

            self.nickname = nickname

            self.nameOnCard = nameOnCard

            self.cardId = cardId
        }

        public func duplicate() -> AttachCardRequest {
            let dict = self.dictionary!
            let copy = AttachCardRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                refresh = try container.decode(Bool.self, forKey: .refresh)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardId = try container.decode(String.self, forKey: .cardId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(refresh, forKey: .refresh)

            try? container.encodeIfPresent(nickname, forKey: .nickname)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encode(cardId, forKey: .cardId)
        }
    }

    /*
         Model: AttachCardsResponse
         Used By: Payment
     */
    class AttachCardsResponse: Codable {
        public var success: Bool

        public var data: [String: Any]

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case data

            case message
        }

        public init(data: [String: Any], message: String?, success: Bool) {
            self.success = success

            self.data = data

            self.message = message
        }

        public func duplicate() -> AttachCardsResponse {
            let dict = self.dictionary!
            let copy = AttachCardsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode([String: Any].self, forKey: .data)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: CardPaymentGateway
         Used By: Payment
     */
    class CardPaymentGateway: Codable {
        public var api: String?

        public var aggregator: String

        public var customerId: String?

        public enum CodingKeys: String, CodingKey {
            case api

            case aggregator

            case customerId = "customer_id"
        }

        public init(aggregator: String, api: String?, customerId: String?) {
            self.api = api

            self.aggregator = aggregator

            self.customerId = customerId
        }

        public func duplicate() -> CardPaymentGateway {
            let dict = self.dictionary!
            let copy = CardPaymentGateway(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                api = try container.decode(String.self, forKey: .api)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(api, forKey: .api)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(customerId, forKey: .customerId)
        }
    }

    /*
         Model: ActiveCardPaymentGatewayResponse
         Used By: Payment
     */
    class ActiveCardPaymentGatewayResponse: Codable {
        public var cards: CardPaymentGateway

        public var success: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case cards

            case success

            case message
        }

        public init(cards: CardPaymentGateway, message: String, success: Bool) {
            self.cards = cards

            self.success = success

            self.message = message
        }

        public func duplicate() -> ActiveCardPaymentGatewayResponse {
            let dict = self.dictionary!
            let copy = ActiveCardPaymentGatewayResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cards = try container.decode(CardPaymentGateway.self, forKey: .cards)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cards, forKey: .cards)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: Card
         Used By: Payment
     */
    class Card: Codable {
        public var cardReference: String?

        public var cardBrandImage: String?

        public var expYear: Int?

        public var cardFingerprint: String?

        public var cardName: String?

        public var cardId: String?

        public var cardIsin: String?

        public var nickname: String?

        public var cardIssuer: String?

        public var aggregatorName: String

        public var cardToken: String?

        public var cardBrand: String?

        public var expired: Bool?

        public var cardType: String?

        public var expMonth: Int?

        public var cardNumber: String?

        public enum CodingKeys: String, CodingKey {
            case cardReference = "card_reference"

            case cardBrandImage = "card_brand_image"

            case expYear = "exp_year"

            case cardFingerprint = "card_fingerprint"

            case cardName = "card_name"

            case cardId = "card_id"

            case cardIsin = "card_isin"

            case nickname

            case cardIssuer = "card_issuer"

            case aggregatorName = "aggregator_name"

            case cardToken = "card_token"

            case cardBrand = "card_brand"

            case expired

            case cardType = "card_type"

            case expMonth = "exp_month"

            case cardNumber = "card_number"
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, expired: Bool?, expMonth: Int?, expYear: Int?, nickname: String?) {
            self.cardReference = cardReference

            self.cardBrandImage = cardBrandImage

            self.expYear = expYear

            self.cardFingerprint = cardFingerprint

            self.cardName = cardName

            self.cardId = cardId

            self.cardIsin = cardIsin

            self.nickname = nickname

            self.cardIssuer = cardIssuer

            self.aggregatorName = aggregatorName

            self.cardToken = cardToken

            self.cardBrand = cardBrand

            self.expired = expired

            self.cardType = cardType

            self.expMonth = expMonth

            self.cardNumber = cardNumber
        }

        public func duplicate() -> Card {
            let dict = self.dictionary!
            let copy = Card(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cardReference = try container.decode(String.self, forKey: .cardReference)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expYear = try container.decode(Int.self, forKey: .expYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardName = try container.decode(String.self, forKey: .cardName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardId = try container.decode(String.self, forKey: .cardId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrand = try container.decode(String.self, forKey: .cardBrand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expired = try container.decode(Bool.self, forKey: .expired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardType = try container.decode(String.self, forKey: .cardType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expMonth = try container.decode(Int.self, forKey: .expMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardNumber = try container.decode(String.self, forKey: .cardNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(cardNumber, forKey: .cardNumber)
        }
    }

    /*
         Model: ListCardsResponse
         Used By: Payment
     */
    class ListCardsResponse: Codable {
        public var success: Bool

        public var data: [Card]?

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case data

            case message
        }

        public init(data: [Card]?, message: String, success: Bool) {
            self.success = success

            self.data = data

            self.message = message
        }

        public func duplicate() -> ListCardsResponse {
            let dict = self.dictionary!
            let copy = ListCardsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                data = try container.decode([Card].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: DeletehCardRequest
         Used By: Payment
     */
    class DeletehCardRequest: Codable {
        public var cardId: String

        public enum CodingKeys: String, CodingKey {
            case cardId = "card_id"
        }

        public init(cardId: String) {
            self.cardId = cardId
        }

        public func duplicate() -> DeletehCardRequest {
            let dict = self.dictionary!
            let copy = DeletehCardRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardId = try container.decode(String.self, forKey: .cardId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardId, forKey: .cardId)
        }
    }

    /*
         Model: DeleteCardsResponse
         Used By: Payment
     */
    class DeleteCardsResponse: Codable {
        public var success: Bool

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case message
        }

        public init(message: String?, success: Bool) {
            self.success = success

            self.message = message
        }

        public func duplicate() -> DeleteCardsResponse {
            let dict = self.dictionary!
            let copy = DeleteCardsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(message, forKey: .message)
        }
    }

    /*
         Model: ValidateCustomerRequest
         Used By: Payment
     */
    class ValidateCustomerRequest: Codable {
        public var phoneNumber: String

        public var merchantParams: [String: Any]

        public var transactionAmountInPaise: Int

        public var payload: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"

            case merchantParams = "merchant_params"

            case transactionAmountInPaise = "transaction_amount_in_paise"

            case payload

            case aggregator
        }

        public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
            self.phoneNumber = phoneNumber

            self.merchantParams = merchantParams

            self.transactionAmountInPaise = transactionAmountInPaise

            self.payload = payload

            self.aggregator = aggregator
        }

        public func duplicate() -> ValidateCustomerRequest {
            let dict = self.dictionary!
            let copy = ValidateCustomerRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)

            transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)

            payload = try container.decode(String.self, forKey: .payload)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)

            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)

            try? container.encode(payload, forKey: .payload)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }

    /*
         Model: ValidateCustomerResponse
         Used By: Payment
     */
    class ValidateCustomerResponse: Codable {
        public var success: Bool

        public var data: [String: Any]

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case data

            case message
        }

        public init(data: [String: Any], message: String, success: Bool) {
            self.success = success

            self.data = data

            self.message = message
        }

        public func duplicate() -> ValidateCustomerResponse {
            let dict = self.dictionary!
            let copy = ValidateCustomerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode([String: Any].self, forKey: .data)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: ChargeCustomerRequest
         Used By: Payment
     */
    class ChargeCustomerRequest: Codable {
        public var amount: Int

        public var transactionToken: String?

        public var verified: Bool?

        public var orderId: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case transactionToken = "transaction_token"

            case verified

            case orderId = "order_id"

            case aggregator
        }

        public init(aggregator: String, amount: Int, orderId: String, transactionToken: String?, verified: Bool?) {
            self.amount = amount

            self.transactionToken = transactionToken

            self.verified = verified

            self.orderId = orderId

            self.aggregator = aggregator
        }

        public func duplicate() -> ChargeCustomerRequest {
            let dict = self.dictionary!
            let copy = ChargeCustomerRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                transactionToken = try container.decode(String.self, forKey: .transactionToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(transactionToken, forKey: .transactionToken)

            try? container.encode(verified, forKey: .verified)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }

    /*
         Model: ChargeCustomerResponse
         Used By: Payment
     */
    class ChargeCustomerResponse: Codable {
        public var status: String

        public var cartId: String?

        public var orderId: String

        public var aggregator: String

        public var success: Bool

        public var message: String

        public var deliveryAddressId: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case cartId = "cart_id"

            case orderId = "order_id"

            case aggregator

            case success

            case message

            case deliveryAddressId = "delivery_address_id"
        }

        public init(aggregator: String, cartId: String?, deliveryAddressId: String?, message: String, orderId: String, status: String, success: Bool) {
            self.status = status

            self.cartId = cartId

            self.orderId = orderId

            self.aggregator = aggregator

            self.success = success

            self.message = message

            self.deliveryAddressId = deliveryAddressId
        }

        public func duplicate() -> ChargeCustomerResponse {
            let dict = self.dictionary!
            let copy = ChargeCustomerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(cartId, forKey: .cartId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)
        }
    }

    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var amount: Int

        public var vpa: String?

        public var email: String

        public var currency: String

        public var merchantOrderId: String

        public var contact: String

        public var orderId: String

        public var timeout: Int?

        public var customerId: String

        public var razorpayPaymentId: String?

        public var method: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case vpa

            case email

            case currency

            case merchantOrderId = "merchant_order_id"

            case contact

            case orderId = "order_id"

            case timeout

            case customerId = "customer_id"

            case razorpayPaymentId = "razorpay_payment_id"

            case method

            case aggregator
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String?, timeout: Int?, vpa: String?) {
            self.amount = amount

            self.vpa = vpa

            self.email = email

            self.currency = currency

            self.merchantOrderId = merchantOrderId

            self.contact = contact

            self.orderId = orderId

            self.timeout = timeout

            self.customerId = customerId

            self.razorpayPaymentId = razorpayPaymentId

            self.method = method

            self.aggregator = aggregator
        }

        public func duplicate() -> PaymentInitializationRequest {
            let dict = self.dictionary!
            let copy = PaymentInitializationRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            currency = try container.decode(String.self, forKey: .currency)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            contact = try container.decode(String.self, forKey: .contact)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }

    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */
    class PaymentInitializationResponse: Codable {
        public var amount: Int?

        public var vpa: String?

        public var aggregatorOrderId: String?

        public var currency: String?

        public var status: String?

        public var upiPollUrl: String?

        public var merchantOrderId: String

        public var pollingUrl: String

        public var timeout: Int?

        public var customerId: String?

        public var razorpayPaymentId: String?

        public var virtualId: String?

        public var method: String

        public var aggregator: String

        public var success: Bool

        public var bqrImage: String?

        public enum CodingKeys: String, CodingKey {
            case amount

            case vpa

            case aggregatorOrderId = "aggregator_order_id"

            case currency

            case status

            case upiPollUrl = "upi_poll_url"

            case merchantOrderId = "merchant_order_id"

            case pollingUrl = "polling_url"

            case timeout

            case customerId = "customer_id"

            case razorpayPaymentId = "razorpay_payment_id"

            case virtualId = "virtual_id"

            case method

            case aggregator

            case success

            case bqrImage = "bqr_image"
        }

        public init(aggregator: String, aggregatorOrderId: String?, amount: Int?, bqrImage: String?, currency: String?, customerId: String?, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String?, status: String?, success: Bool, timeout: Int?, upiPollUrl: String?, virtualId: String?, vpa: String?) {
            self.amount = amount

            self.vpa = vpa

            self.aggregatorOrderId = aggregatorOrderId

            self.currency = currency

            self.status = status

            self.upiPollUrl = upiPollUrl

            self.merchantOrderId = merchantOrderId

            self.pollingUrl = pollingUrl

            self.timeout = timeout

            self.customerId = customerId

            self.razorpayPaymentId = razorpayPaymentId

            self.virtualId = virtualId

            self.method = method

            self.aggregator = aggregator

            self.success = success

            self.bqrImage = bqrImage
        }

        public func duplicate() -> PaymentInitializationResponse {
            let dict = self.dictionary!
            let copy = PaymentInitializationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amount = try container.decode(Int.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                virtualId = try container.decode(String.self, forKey: .virtualId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(bqrImage, forKey: .bqrImage)
        }
    }

    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var amount: Int

        public var vpa: String

        public var currency: String

        public var status: String

        public var merchantOrderId: String

        public var orderId: String

        public var contact: String

        public var customerId: String

        public var email: String

        public var method: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case vpa

            case currency

            case status

            case merchantOrderId = "merchant_order_id"

            case orderId = "order_id"

            case contact

            case customerId = "customer_id"

            case email

            case method

            case aggregator
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.amount = amount

            self.vpa = vpa

            self.currency = currency

            self.status = status

            self.merchantOrderId = merchantOrderId

            self.orderId = orderId

            self.contact = contact

            self.customerId = customerId

            self.email = email

            self.method = method

            self.aggregator = aggregator
        }

        public func duplicate() -> PaymentStatusUpdateRequest {
            let dict = self.dictionary!
            let copy = PaymentStatusUpdateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Int.self, forKey: .amount)

            vpa = try container.decode(String.self, forKey: .vpa)

            currency = try container.decode(String.self, forKey: .currency)

            status = try container.decode(String.self, forKey: .status)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            orderId = try container.decode(String.self, forKey: .orderId)

            contact = try container.decode(String.self, forKey: .contact)

            customerId = try container.decode(String.self, forKey: .customerId)

            email = try container.decode(String.self, forKey: .email)

            method = try container.decode(String.self, forKey: .method)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }

    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */
    class PaymentStatusUpdateResponse: Codable {
        public var status: String

        public var aggregatorName: String

        public var retry: Bool

        public enum CodingKeys: String, CodingKey {
            case status

            case aggregatorName = "aggregator_name"

            case retry
        }

        public init(aggregatorName: String, retry: Bool, status: String) {
            self.status = status

            self.aggregatorName = aggregatorName

            self.retry = retry
        }

        public func duplicate() -> PaymentStatusUpdateResponse {
            let dict = self.dictionary!
            let copy = PaymentStatusUpdateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            retry = try container.decode(Bool.self, forKey: .retry)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(retry, forKey: .retry)
        }
    }

    /*
         Model: AggregatorRoute
         Used By: Payment
     */
    class AggregatorRoute: Codable {
        public var paymentFlow: String?

        public var apiLink: String?

        public var paymentFlowData: String?

        public var data: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case paymentFlow = "payment_flow"

            case apiLink = "api_link"

            case paymentFlowData = "payment_flow_data"

            case data
        }

        public init(apiLink: String?, data: [String: Any]?, paymentFlow: String?, paymentFlowData: String?) {
            self.paymentFlow = paymentFlow

            self.apiLink = apiLink

            self.paymentFlowData = paymentFlowData

            self.data = data
        }

        public func duplicate() -> AggregatorRoute {
            let dict = self.dictionary!
            let copy = AggregatorRoute(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentFlow = try container.decode(String.self, forKey: .paymentFlow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apiLink = try container.decode(String.self, forKey: .apiLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentFlowData = try container.decode(String.self, forKey: .paymentFlowData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentFlow, forKey: .paymentFlow)

            try? container.encode(apiLink, forKey: .apiLink)

            try? container.encode(paymentFlowData, forKey: .paymentFlowData)

            try? container.encode(data, forKey: .data)
        }
    }

    /*
         Model: PaymentFlow
         Used By: Payment
     */
    class PaymentFlow: Codable {
        public var payubiz: AggregatorRoute?

        public var razorpay: AggregatorRoute?

        public var bqrRazorpay: AggregatorRoute?

        public var simpl: AggregatorRoute?

        public var jiopay: AggregatorRoute?

        public var juspay: AggregatorRoute?

        public var rupifi: AggregatorRoute?

        public var fynd: AggregatorRoute?

        public var stripe: AggregatorRoute?

        public var epaylater: AggregatorRoute?

        public var ccavenue: AggregatorRoute?

        public var upiRazorpay: AggregatorRoute?

        public var mswipe: AggregatorRoute?

        public enum CodingKeys: String, CodingKey {
            case payubiz

            case razorpay

            case bqrRazorpay = "bqr_razorpay"

            case simpl

            case jiopay

            case juspay

            case rupifi

            case fynd

            case stripe

            case epaylater

            case ccavenue

            case upiRazorpay = "upi_razorpay"

            case mswipe
        }

        public init(bqrRazorpay: AggregatorRoute?, ccavenue: AggregatorRoute?, epaylater: AggregatorRoute?, fynd: AggregatorRoute?, jiopay: AggregatorRoute?, juspay: AggregatorRoute?, mswipe: AggregatorRoute?, payubiz: AggregatorRoute?, razorpay: AggregatorRoute?, rupifi: AggregatorRoute?, simpl: AggregatorRoute?, stripe: AggregatorRoute?, upiRazorpay: AggregatorRoute?) {
            self.payubiz = payubiz

            self.razorpay = razorpay

            self.bqrRazorpay = bqrRazorpay

            self.simpl = simpl

            self.jiopay = jiopay

            self.juspay = juspay

            self.rupifi = rupifi

            self.fynd = fynd

            self.stripe = stripe

            self.epaylater = epaylater

            self.ccavenue = ccavenue

            self.upiRazorpay = upiRazorpay

            self.mswipe = mswipe
        }

        public func duplicate() -> PaymentFlow {
            let dict = self.dictionary!
            let copy = PaymentFlow(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payubiz = try container.decode(AggregatorRoute.self, forKey: .payubiz)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                razorpay = try container.decode(AggregatorRoute.self, forKey: .razorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bqrRazorpay = try container.decode(AggregatorRoute.self, forKey: .bqrRazorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                simpl = try container.decode(AggregatorRoute.self, forKey: .simpl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jiopay = try container.decode(AggregatorRoute.self, forKey: .jiopay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                juspay = try container.decode(AggregatorRoute.self, forKey: .juspay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rupifi = try container.decode(AggregatorRoute.self, forKey: .rupifi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fynd = try container.decode(AggregatorRoute.self, forKey: .fynd)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stripe = try container.decode(AggregatorRoute.self, forKey: .stripe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                epaylater = try container.decode(AggregatorRoute.self, forKey: .epaylater)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ccavenue = try container.decode(AggregatorRoute.self, forKey: .ccavenue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upiRazorpay = try container.decode(AggregatorRoute.self, forKey: .upiRazorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mswipe = try container.decode(AggregatorRoute.self, forKey: .mswipe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(payubiz, forKey: .payubiz)

            try? container.encode(razorpay, forKey: .razorpay)

            try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)

            try? container.encode(simpl, forKey: .simpl)

            try? container.encode(jiopay, forKey: .jiopay)

            try? container.encode(juspay, forKey: .juspay)

            try? container.encode(rupifi, forKey: .rupifi)

            try? container.encode(fynd, forKey: .fynd)

            try? container.encode(stripe, forKey: .stripe)

            try? container.encode(epaylater, forKey: .epaylater)

            try? container.encode(ccavenue, forKey: .ccavenue)

            try? container.encode(upiRazorpay, forKey: .upiRazorpay)

            try? container.encode(mswipe, forKey: .mswipe)
        }
    }

    /*
         Model: PaymentModeLogo
         Used By: Payment
     */
    class PaymentModeLogo: Codable {
        public var small: String

        public var large: String

        public enum CodingKeys: String, CodingKey {
            case small

            case large
        }

        public init(large: String, small: String) {
            self.small = small

            self.large = large
        }

        public func duplicate() -> PaymentModeLogo {
            let dict = self.dictionary!
            let copy = PaymentModeLogo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            small = try container.decode(String.self, forKey: .small)

            large = try container.decode(String.self, forKey: .large)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(small, forKey: .small)

            try? container.encodeIfPresent(large, forKey: .large)
        }
    }

    /*
         Model: IntentApp
         Used By: Payment
     */
    class IntentApp: Codable {
        public var packageName: String?

        public var code: String?

        public var logos: PaymentModeLogo?

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case packageName = "package_name"

            case code

            case logos

            case displayName = "display_name"
        }

        public init(code: String?, displayName: String?, logos: PaymentModeLogo?, packageName: String?) {
            self.packageName = packageName

            self.code = code

            self.logos = logos

            self.displayName = displayName
        }

        public func duplicate() -> IntentApp {
            let dict = self.dictionary!
            let copy = IntentApp(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                packageName = try container.decode(String.self, forKey: .packageName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logos = try container.decode(PaymentModeLogo.self, forKey: .logos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(packageName, forKey: .packageName)

            try? container.encode(code, forKey: .code)

            try? container.encode(logos, forKey: .logos)

            try? container.encode(displayName, forKey: .displayName)
        }
    }

    /*
         Model: IntentAppErrorList
         Used By: Payment
     */
    class IntentAppErrorList: Codable {
        public var packageName: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case packageName = "package_name"

            case code
        }

        public init(code: String?, packageName: String?) {
            self.packageName = packageName

            self.code = code
        }

        public func duplicate() -> IntentAppErrorList {
            let dict = self.dictionary!
            let copy = IntentAppErrorList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                packageName = try container.decode(String.self, forKey: .packageName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(packageName, forKey: .packageName)

            try? container.encode(code, forKey: .code)
        }
    }

    /*
         Model: PaymentModeList
         Used By: Payment
     */
    class PaymentModeList: Codable {
        public var logoUrl: PaymentModeLogo?

        public var cardFingerprint: String?

        public var expMonth: Int?

        public var intentApp: [IntentApp]?

        public var cardIssuer: String?

        public var merchantCode: String?

        public var cardToken: String?

        public var cardReference: String?

        public var cardBrandImage: String?

        public var expYear: Int?

        public var intentAppErrorDictList: [IntentAppErrorList]?

        public var cardName: String?

        public var cardId: String?

        public var cardIsin: String?

        public var fyndVpa: String?

        public var nickname: String?

        public var retryCount: Int?

        public var aggregatorName: String

        public var expired: Bool?

        public var timeout: Int?

        public var code: String?

        public var displayName: String?

        public var intentFlow: Bool?

        public var cardNumber: String?

        public var name: String?

        public var displayPriority: Int?

        public var cardBrand: String?

        public var cardType: String?

        public var intentAppErrorList: [String]?

        public enum CodingKeys: String, CodingKey {
            case logoUrl = "logo_url"

            case cardFingerprint = "card_fingerprint"

            case expMonth = "exp_month"

            case intentApp = "intent_app"

            case cardIssuer = "card_issuer"

            case merchantCode = "merchant_code"

            case cardToken = "card_token"

            case cardReference = "card_reference"

            case cardBrandImage = "card_brand_image"

            case expYear = "exp_year"

            case intentAppErrorDictList = "intent_app_error_dict_list"

            case cardName = "card_name"

            case cardId = "card_id"

            case cardIsin = "card_isin"

            case fyndVpa = "fynd_vpa"

            case nickname

            case retryCount = "retry_count"

            case aggregatorName = "aggregator_name"

            case expired

            case timeout

            case code

            case displayName = "display_name"

            case intentFlow = "intent_flow"

            case cardNumber = "card_number"

            case name

            case displayPriority = "display_priority"

            case cardBrand = "card_brand"

            case cardType = "card_type"

            case intentAppErrorList = "intent_app_error_list"
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
            self.logoUrl = logoUrl

            self.cardFingerprint = cardFingerprint

            self.expMonth = expMonth

            self.intentApp = intentApp

            self.cardIssuer = cardIssuer

            self.merchantCode = merchantCode

            self.cardToken = cardToken

            self.cardReference = cardReference

            self.cardBrandImage = cardBrandImage

            self.expYear = expYear

            self.intentAppErrorDictList = intentAppErrorDictList

            self.cardName = cardName

            self.cardId = cardId

            self.cardIsin = cardIsin

            self.fyndVpa = fyndVpa

            self.nickname = nickname

            self.retryCount = retryCount

            self.aggregatorName = aggregatorName

            self.expired = expired

            self.timeout = timeout

            self.code = code

            self.displayName = displayName

            self.intentFlow = intentFlow

            self.cardNumber = cardNumber

            self.name = name

            self.displayPriority = displayPriority

            self.cardBrand = cardBrand

            self.cardType = cardType

            self.intentAppErrorList = intentAppErrorList
        }

        public func duplicate() -> PaymentModeList {
            let dict = self.dictionary!
            let copy = PaymentModeList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expMonth = try container.decode(Int.self, forKey: .expMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentApp = try container.decode([IntentApp].self, forKey: .intentApp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardReference = try container.decode(String.self, forKey: .cardReference)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expYear = try container.decode(Int.self, forKey: .expYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardName = try container.decode(String.self, forKey: .cardName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardId = try container.decode(String.self, forKey: .cardId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndVpa = try container.decode(String.self, forKey: .fyndVpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                retryCount = try container.decode(Int.self, forKey: .retryCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                expired = try container.decode(Bool.self, forKey: .expired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentFlow = try container.decode(Bool.self, forKey: .intentFlow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardNumber = try container.decode(String.self, forKey: .cardNumber)

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

            do {
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrand = try container.decode(String.self, forKey: .cardBrand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardType = try container.decode(String.self, forKey: .cardType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(intentApp, forKey: .intentApp)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(merchantCode, forKey: .merchantCode)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(fyndVpa, forKey: .fyndVpa)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(retryCount, forKey: .retryCount)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(code, forKey: .code)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(intentFlow, forKey: .intentFlow)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(name, forKey: .name)

            try? container.encode(displayPriority, forKey: .displayPriority)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)
        }
    }

    /*
         Model: RootPaymentMode
         Used By: Payment
     */
    class RootPaymentMode: Codable {
        public var list: [PaymentModeList]?

        public var anonymousEnable: Bool?

        public var name: String

        public var addCardEnabled: Bool?

        public var displayPriority: Int

        public var aggregatorName: String?

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case list

            case anonymousEnable = "anonymous_enable"

            case name

            case addCardEnabled = "add_card_enabled"

            case displayPriority = "display_priority"

            case aggregatorName = "aggregator_name"

            case displayName = "display_name"
        }

        public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, name: String) {
            self.list = list

            self.anonymousEnable = anonymousEnable

            self.name = name

            self.addCardEnabled = addCardEnabled

            self.displayPriority = displayPriority

            self.aggregatorName = aggregatorName

            self.displayName = displayName
        }

        public func duplicate() -> RootPaymentMode {
            let dict = self.dictionary!
            let copy = RootPaymentMode(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }

    /*
         Model: PaymentOptionAndFlow
         Used By: Payment
     */
    class PaymentOptionAndFlow: Codable {
        public var paymentFlows: PaymentFlow

        public var paymentOption: [RootPaymentMode]

        public enum CodingKeys: String, CodingKey {
            case paymentFlows = "payment_flows"

            case paymentOption = "payment_option"
        }

        public init(paymentFlows: PaymentFlow, paymentOption: [RootPaymentMode]) {
            self.paymentFlows = paymentFlows

            self.paymentOption = paymentOption
        }

        public func duplicate() -> PaymentOptionAndFlow {
            let dict = self.dictionary!
            let copy = PaymentOptionAndFlow(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentFlows = try container.decode(PaymentFlow.self, forKey: .paymentFlows)

            paymentOption = try container.decode([RootPaymentMode].self, forKey: .paymentOption)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)

            try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
        }
    }

    /*
         Model: PaymentModeRouteResponse
         Used By: Payment
     */
    class PaymentModeRouteResponse: Codable {
        public var success: Bool

        public var paymentOptions: PaymentOptionAndFlow

        public enum CodingKeys: String, CodingKey {
            case success

            case paymentOptions = "payment_options"
        }

        public init(paymentOptions: PaymentOptionAndFlow, success: Bool) {
            self.success = success

            self.paymentOptions = paymentOptions
        }

        public func duplicate() -> PaymentModeRouteResponse {
            let dict = self.dictionary!
            let copy = PaymentModeRouteResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            paymentOptions = try container.decode(PaymentOptionAndFlow.self, forKey: .paymentOptions)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
        }
    }

    /*
         Model: RupifiBannerData
         Used By: Payment
     */
    class RupifiBannerData: Codable {
        public var status: String?

        public var kycUrl: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case kycUrl = "kyc_url"
        }

        public init(kycUrl: String?, status: String?) {
            self.status = status

            self.kycUrl = kycUrl
        }

        public func duplicate() -> RupifiBannerData {
            let dict = self.dictionary!
            let copy = RupifiBannerData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kycUrl = try container.decode(String.self, forKey: .kycUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(kycUrl, forKey: .kycUrl)
        }
    }

    /*
         Model: RupifiBannerResponse
         Used By: Payment
     */
    class RupifiBannerResponse: Codable {
        public var success: Bool

        public var data: RupifiBannerData

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: RupifiBannerData, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> RupifiBannerResponse {
            let dict = self.dictionary!
            let copy = RupifiBannerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(RupifiBannerData.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: EpaylaterBannerData
         Used By: Payment
     */
    class EpaylaterBannerData: Codable {
        public var status: String?

        public var message: String?

        public var display: Bool

        public enum CodingKeys: String, CodingKey {
            case status

            case message

            case display
        }

        public init(display: Bool, message: String?, status: String?) {
            self.status = status

            self.message = message

            self.display = display
        }

        public func duplicate() -> EpaylaterBannerData {
            let dict = self.dictionary!
            let copy = EpaylaterBannerData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            display = try container.decode(Bool.self, forKey: .display)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: EpaylaterBannerResponse
         Used By: Payment
     */
    class EpaylaterBannerResponse: Codable {
        public var success: Bool

        public var data: EpaylaterBannerData

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: EpaylaterBannerData, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> EpaylaterBannerResponse {
            let dict = self.dictionary!
            let copy = EpaylaterBannerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(EpaylaterBannerData.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: ResendOrCancelPaymentRequest
         Used By: Payment
     */
    class ResendOrCancelPaymentRequest: Codable {
        public var orderId: String

        public var requestType: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case requestType = "request_type"
        }

        public init(orderId: String, requestType: String) {
            self.orderId = orderId

            self.requestType = requestType
        }

        public func duplicate() -> ResendOrCancelPaymentRequest {
            let dict = self.dictionary!
            let copy = ResendOrCancelPaymentRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            requestType = try container.decode(String.self, forKey: .requestType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(requestType, forKey: .requestType)
        }
    }

    /*
         Model: LinkStatus
         Used By: Payment
     */
    class LinkStatus: Codable {
        public var status: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case status

            case message
        }

        public init(message: String, status: Bool) {
            self.status = status

            self.message = message
        }

        public func duplicate() -> LinkStatus {
            let dict = self.dictionary!
            let copy = LinkStatus(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Bool.self, forKey: .status)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: ResendOrCancelPaymentResponse
         Used By: Payment
     */
    class ResendOrCancelPaymentResponse: Codable {
        public var success: Bool

        public var data: LinkStatus

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: LinkStatus, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> ResendOrCancelPaymentResponse {
            let dict = self.dictionary!
            let copy = ResendOrCancelPaymentResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(LinkStatus.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: TransferItemsDetails
         Used By: Payment
     */
    class TransferItemsDetails: Codable {
        public var id: Int

        public var logoLarge: String

        public var name: String

        public var displayName: String?

        public var logoSmall: String

        public enum CodingKeys: String, CodingKey {
            case id

            case logoLarge = "logo_large"

            case name

            case displayName = "display_name"

            case logoSmall = "logo_small"
        }

        public init(displayName: String?, id: Int, logoLarge: String, logoSmall: String, name: String) {
            self.id = id

            self.logoLarge = logoLarge

            self.name = name

            self.displayName = displayName

            self.logoSmall = logoSmall
        }

        public func duplicate() -> TransferItemsDetails {
            let dict = self.dictionary!
            let copy = TransferItemsDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            logoLarge = try container.decode(String.self, forKey: .logoLarge)

            name = try container.decode(String.self, forKey: .name)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logoSmall = try container.decode(String.self, forKey: .logoSmall)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)
        }
    }

    /*
         Model: TransferModeDetails
         Used By: Payment
     */
    class TransferModeDetails: Codable {
        public var displayName: String

        public var items: [TransferItemsDetails]?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case items
        }

        public init(displayName: String, items: [TransferItemsDetails]?) {
            self.displayName = displayName

            self.items = items
        }

        public func duplicate() -> TransferModeDetails {
            let dict = self.dictionary!
            let copy = TransferModeDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                items = try container.decode([TransferItemsDetails].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: TransferModeResponse
         Used By: Payment
     */
    class TransferModeResponse: Codable {
        public var data: [TransferModeDetails]

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: [TransferModeDetails]) {
            self.data = data
        }

        public func duplicate() -> TransferModeResponse {
            let dict = self.dictionary!
            let copy = TransferModeResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([TransferModeDetails].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: UpdateRefundTransferModeRequest
         Used By: Payment
     */
    class UpdateRefundTransferModeRequest: Codable {
        public var transferMode: String

        public var enable: Bool

        public enum CodingKeys: String, CodingKey {
            case transferMode = "transfer_mode"

            case enable
        }

        public init(enable: Bool, transferMode: String) {
            self.transferMode = transferMode

            self.enable = enable
        }

        public func duplicate() -> UpdateRefundTransferModeRequest {
            let dict = self.dictionary!
            let copy = UpdateRefundTransferModeRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            enable = try container.decode(Bool.self, forKey: .enable)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(enable, forKey: .enable)
        }
    }

    /*
         Model: UpdateRefundTransferModeResponse
         Used By: Payment
     */
    class UpdateRefundTransferModeResponse: Codable {
        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case success
        }

        public init(success: Bool?) {
            self.success = success
        }

        public func duplicate() -> UpdateRefundTransferModeResponse {
            let dict = self.dictionary!
            let copy = UpdateRefundTransferModeResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var ifscCode: String

        public var createdOn: String

        public var mobile: Bool?

        public var branchName: Bool?

        public var id: Int

        public var comment: Bool?

        public var address: String

        public var title: String

        public var beneficiaryId: String

        public var modifiedOn: String

        public var transferMode: String

        public var displayName: String

        public var accountHolder: String

        public var delightsUserName: String?

        public var subtitle: String

        public var isActive: Bool

        public var bankName: String

        public var email: String

        public var accountNo: String

        public enum CodingKeys: String, CodingKey {
            case ifscCode = "ifsc_code"

            case createdOn = "created_on"

            case mobile

            case branchName = "branch_name"

            case id

            case comment

            case address

            case title

            case beneficiaryId = "beneficiary_id"

            case modifiedOn = "modified_on"

            case transferMode = "transfer_mode"

            case displayName = "display_name"

            case accountHolder = "account_holder"

            case delightsUserName = "delights_user_name"

            case subtitle

            case isActive = "is_active"

            case bankName = "bank_name"

            case email

            case accountNo = "account_no"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String?, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.ifscCode = ifscCode

            self.createdOn = createdOn

            self.mobile = mobile

            self.branchName = branchName

            self.id = id

            self.comment = comment

            self.address = address

            self.title = title

            self.beneficiaryId = beneficiaryId

            self.modifiedOn = modifiedOn

            self.transferMode = transferMode

            self.displayName = displayName

            self.accountHolder = accountHolder

            self.delightsUserName = delightsUserName

            self.subtitle = subtitle

            self.isActive = isActive

            self.bankName = bankName

            self.email = email

            self.accountNo = accountNo
        }

        public func duplicate() -> OrderBeneficiaryDetails {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            title = try container.decode(String.self, forKey: .title)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            displayName = try container.decode(String.self, forKey: .displayName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            bankName = try container.decode(String.self, forKey: .bankName)

            email = try container.decode(String.self, forKey: .email)

            accountNo = try container.decode(String.self, forKey: .accountNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
        }
    }

    /*
         Model: OrderBeneficiaryResponse
         Used By: Payment
     */
    class OrderBeneficiaryResponse: Codable {
        public var beneficiaries: [OrderBeneficiaryDetails]?

        public var showBeneficiaryDetails: Bool?

        public enum CodingKeys: String, CodingKey {
            case beneficiaries

            case showBeneficiaryDetails = "show_beneficiary_details"
        }

        public init(beneficiaries: [OrderBeneficiaryDetails]?, showBeneficiaryDetails: Bool?) {
            self.beneficiaries = beneficiaries

            self.showBeneficiaryDetails = showBeneficiaryDetails
        }

        public func duplicate() -> OrderBeneficiaryResponse {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                beneficiaries = try container.decode([OrderBeneficiaryDetails].self, forKey: .beneficiaries)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(beneficiaries, forKey: .beneficiaries)

            try? container.encodeIfPresent(showBeneficiaryDetails, forKey: .showBeneficiaryDetails)
        }
    }

    /*
         Model: NotFoundResourceError
         Used By: Payment
     */
    class NotFoundResourceError: Codable {
        public var code: String

        public var description: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case code

            case description

            case success
        }

        public init(code: String, description: String, success: Bool) {
            self.code = code

            self.description = description

            self.success = success
        }

        public func duplicate() -> NotFoundResourceError {
            let dict = self.dictionary!
            let copy = NotFoundResourceError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            description = try container.decode(String.self, forKey: .description)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: IfscCodeResponse
         Used By: Payment
     */
    class IfscCodeResponse: Codable {
        public var success: Bool?

        public var branchName: String

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case success

            case branchName = "branch_name"

            case bankName = "bank_name"
        }

        public init(bankName: String, branchName: String, success: Bool?) {
            self.success = success

            self.branchName = branchName

            self.bankName = bankName
        }

        public func duplicate() -> IfscCodeResponse {
            let dict = self.dictionary!
            let copy = IfscCodeResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            branchName = try container.decode(String.self, forKey: .branchName)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }

    /*
         Model: ErrorCodeDescription
         Used By: Payment
     */
    class ErrorCodeDescription: Codable {
        public var code: String

        public var description: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case code

            case description

            case success
        }

        public init(code: String, description: String, success: Bool) {
            self.code = code

            self.description = description

            self.success = success
        }

        public func duplicate() -> ErrorCodeDescription {
            let dict = self.dictionary!
            let copy = ErrorCodeDescription(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            description = try container.decode(String.self, forKey: .description)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: AddBeneficiaryViaOtpVerificationRequest
         Used By: Payment
     */
    class AddBeneficiaryViaOtpVerificationRequest: Codable {
        public var hashKey: String

        public var otp: String

        public var requestId: String

        public enum CodingKeys: String, CodingKey {
            case hashKey = "hash_key"

            case otp

            case requestId = "request_id"
        }

        public init(hashKey: String, otp: String, requestId: String) {
            self.hashKey = hashKey

            self.otp = otp

            self.requestId = requestId
        }

        public func duplicate() -> AddBeneficiaryViaOtpVerificationRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryViaOtpVerificationRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hashKey = try container.decode(String.self, forKey: .hashKey)

            otp = try container.decode(String.self, forKey: .otp)

            requestId = try container.decode(String.self, forKey: .requestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hashKey, forKey: .hashKey)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(requestId, forKey: .requestId)
        }
    }

    /*
         Model: AddBeneficiaryViaOtpVerificationResponse
         Used By: Payment
     */
    class AddBeneficiaryViaOtpVerificationResponse: Codable {
        public var success: Bool?

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case message
        }

        public init(message: String, success: Bool?) {
            self.success = success

            self.message = message
        }

        public func duplicate() -> AddBeneficiaryViaOtpVerificationResponse {
            let dict = self.dictionary!
            let copy = AddBeneficiaryViaOtpVerificationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: WrongOtpError
         Used By: Payment
     */
    class WrongOtpError: Codable {
        public var isVerifiedFlag: Bool

        public var description: String

        public var success: String

        public enum CodingKeys: String, CodingKey {
            case isVerifiedFlag = "is_verified_flag"

            case description

            case success
        }

        public init(description: String, isVerifiedFlag: Bool, success: String) {
            self.isVerifiedFlag = isVerifiedFlag

            self.description = description

            self.success = success
        }

        public func duplicate() -> WrongOtpError {
            let dict = self.dictionary!
            let copy = WrongOtpError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)

            description = try container.decode(String.self, forKey: .description)

            success = try container.decode(String.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */
    class BeneficiaryModeDetails: Codable {
        public var accountHolder: String

        public var ifscCode: String

        public var vpa: String?

        public var mobile: String

        public var bankName: String

        public var comment: String?

        public var address: String?

        public var email: String

        public var wallet: String?

        public var branchName: String

        public var accountNo: String

        public enum CodingKeys: String, CodingKey {
            case accountHolder = "account_holder"

            case ifscCode = "ifsc_code"

            case vpa

            case mobile

            case bankName = "bank_name"

            case comment

            case address

            case email

            case wallet

            case branchName = "branch_name"

            case accountNo = "account_no"
        }

        public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String, vpa: String?, wallet: String?) {
            self.accountHolder = accountHolder

            self.ifscCode = ifscCode

            self.vpa = vpa

            self.mobile = mobile

            self.bankName = bankName

            self.comment = comment

            self.address = address

            self.email = email

            self.wallet = wallet

            self.branchName = branchName

            self.accountNo = accountNo
        }

        public func duplicate() -> BeneficiaryModeDetails {
            let dict = self.dictionary!
            let copy = BeneficiaryModeDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobile = try container.decode(String.self, forKey: .mobile)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            branchName = try container.decode(String.self, forKey: .branchName)

            accountNo = try container.decode(String.self, forKey: .accountNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
        }
    }

    /*
         Model: AddBeneficiaryDetailsRequest
         Used By: Payment
     */
    class AddBeneficiaryDetailsRequest: Codable {
        public var otp: String?

        public var requestId: String?

        public var orderId: String

        public var transferMode: String

        public var details: BeneficiaryModeDetails

        public var delights: Bool

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case otp

            case requestId = "request_id"

            case orderId = "order_id"

            case transferMode = "transfer_mode"

            case details

            case delights

            case shipmentId = "shipment_id"
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String?, requestId: String?, shipmentId: String, transferMode: String) {
            self.otp = otp

            self.requestId = requestId

            self.orderId = orderId

            self.transferMode = transferMode

            self.details = details

            self.delights = delights

            self.shipmentId = shipmentId
        }

        public func duplicate() -> AddBeneficiaryDetailsRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                otp = try container.decode(String.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)

            delights = try container.decode(Bool.self, forKey: .delights)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(delights, forKey: .delights)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }

    /*
         Model: RefundAccountResponse
         Used By: Payment
     */
    class RefundAccountResponse: Codable {
        public var isVerifiedFlag: Bool?

        public var success: Bool

        public var data: [String: Any]?

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case isVerifiedFlag = "is_verified_flag"

            case success

            case data

            case message
        }

        public init(data: [String: Any]?, isVerifiedFlag: Bool?, message: String, success: Bool) {
            self.isVerifiedFlag = isVerifiedFlag

            self.success = success

            self.data = data

            self.message = message
        }

        public func duplicate() -> RefundAccountResponse {
            let dict = self.dictionary!
            let copy = RefundAccountResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: BankDetailsForOTP
         Used By: Payment
     */
    class BankDetailsForOTP: Codable {
        public var accountHolder: String

        public var ifscCode: String

        public var bankName: String

        public var branchName: String

        public var accountNo: String

        public enum CodingKeys: String, CodingKey {
            case accountHolder = "account_holder"

            case ifscCode = "ifsc_code"

            case bankName = "bank_name"

            case branchName = "branch_name"

            case accountNo = "account_no"
        }

        public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
            self.accountHolder = accountHolder

            self.ifscCode = ifscCode

            self.bankName = bankName

            self.branchName = branchName

            self.accountNo = accountNo
        }

        public func duplicate() -> BankDetailsForOTP {
            let dict = self.dictionary!
            let copy = BankDetailsForOTP(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            bankName = try container.decode(String.self, forKey: .bankName)

            branchName = try container.decode(String.self, forKey: .branchName)

            accountNo = try container.decode(String.self, forKey: .accountNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
        }
    }

    /*
         Model: AddBeneficiaryDetailsOTPRequest
         Used By: Payment
     */
    class AddBeneficiaryDetailsOTPRequest: Codable {
        public var orderId: String

        public var details: BankDetailsForOTP

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case details
        }

        public init(details: BankDetailsForOTP, orderId: String) {
            self.orderId = orderId

            self.details = details
        }

        public func duplicate() -> AddBeneficiaryDetailsOTPRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryDetailsOTPRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            details = try container.decode(BankDetailsForOTP.self, forKey: .details)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(details, forKey: .details)
        }
    }

    /*
         Model: WalletOtpRequest
         Used By: Payment
     */
    class WalletOtpRequest: Codable {
        public var mobile: String

        public var countryCode: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case countryCode = "country_code"
        }

        public init(countryCode: String, mobile: String) {
            self.mobile = mobile

            self.countryCode = countryCode
        }

        public func duplicate() -> WalletOtpRequest {
            let dict = self.dictionary!
            let copy = WalletOtpRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            countryCode = try container.decode(String.self, forKey: .countryCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }

    /*
         Model: WalletOtpResponse
         Used By: Payment
     */
    class WalletOtpResponse: Codable {
        public var isVerifiedFlag: String

        public var requestId: String

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case isVerifiedFlag = "is_verified_flag"

            case requestId = "request_id"

            case success
        }

        public init(isVerifiedFlag: String, requestId: String, success: Bool?) {
            self.isVerifiedFlag = isVerifiedFlag

            self.requestId = requestId

            self.success = success
        }

        public func duplicate() -> WalletOtpResponse {
            let dict = self.dictionary!
            let copy = WalletOtpResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)

            requestId = try container.decode(String.self, forKey: .requestId)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: SetDefaultBeneficiaryRequest
         Used By: Payment
     */
    class SetDefaultBeneficiaryRequest: Codable {
        public var beneficiaryId: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case beneficiaryId = "beneficiary_id"

            case orderId = "order_id"
        }

        public init(beneficiaryId: String, orderId: String) {
            self.beneficiaryId = beneficiaryId

            self.orderId = orderId
        }

        public func duplicate() -> SetDefaultBeneficiaryRequest {
            let dict = self.dictionary!
            let copy = SetDefaultBeneficiaryRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }

    /*
         Model: SetDefaultBeneficiaryResponse
         Used By: Payment
     */
    class SetDefaultBeneficiaryResponse: Codable {
        public var isBeneficiarySet: Bool

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case isBeneficiarySet = "is_beneficiary_set"

            case success
        }

        public init(isBeneficiarySet: Bool, success: Bool?) {
            self.isBeneficiarySet = isBeneficiarySet

            self.success = success
        }

        public func duplicate() -> SetDefaultBeneficiaryResponse {
            let dict = self.dictionary!
            let copy = SetDefaultBeneficiaryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isBeneficiarySet = try container.decode(Bool.self, forKey: .isBeneficiarySet)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isBeneficiarySet, forKey: .isBeneficiarySet)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: BalanceDetails
         Used By: Payment
     */
    class BalanceDetails: Codable {
        public var currency: String

        public var value: Double

        public var formattedValue: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case value

            case formattedValue = "formatted_value"
        }

        public init(currency: String, formattedValue: String, value: Double) {
            self.currency = currency

            self.value = value

            self.formattedValue = formattedValue
        }

        public func duplicate() -> BalanceDetails {
            let dict = self.dictionary!
            let copy = BalanceDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            value = try container.decode(Double.self, forKey: .value)

            formattedValue = try container.decode(String.self, forKey: .formattedValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(formattedValue, forKey: .formattedValue)
        }
    }

    /*
         Model: CreditSummary
         Used By: Payment
     */
    class CreditSummary: Codable {
        public var status: String

        public var balance: BalanceDetails?

        public var statusMessage: String

        public var merchantCustomerRefId: String

        public enum CodingKeys: String, CodingKey {
            case status

            case balance

            case statusMessage = "status_message"

            case merchantCustomerRefId = "merchant_customer_ref_id"
        }

        public init(balance: BalanceDetails?, merchantCustomerRefId: String, status: String, statusMessage: String) {
            self.status = status

            self.balance = balance

            self.statusMessage = statusMessage

            self.merchantCustomerRefId = merchantCustomerRefId
        }

        public func duplicate() -> CreditSummary {
            let dict = self.dictionary!
            let copy = CreditSummary(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            do {
                balance = try container.decode(BalanceDetails.self, forKey: .balance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusMessage = try container.decode(String.self, forKey: .statusMessage)

            merchantCustomerRefId = try container.decode(String.self, forKey: .merchantCustomerRefId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(balance, forKey: .balance)

            try? container.encodeIfPresent(statusMessage, forKey: .statusMessage)

            try? container.encodeIfPresent(merchantCustomerRefId, forKey: .merchantCustomerRefId)
        }
    }

    /*
         Model: CustomerCreditSummaryResponse
         Used By: Payment
     */
    class CustomerCreditSummaryResponse: Codable {
        public var success: Bool

        public var data: CreditSummary?

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: CreditSummary?, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> CustomerCreditSummaryResponse {
            let dict = self.dictionary!
            let copy = CustomerCreditSummaryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                data = try container.decode(CreditSummary.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: RedirectURL
         Used By: Payment
     */
    class RedirectURL: Codable {
        public var signupUrl: String

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case signupUrl = "signup_url"

            case status
        }

        public init(signupUrl: String, status: Bool) {
            self.signupUrl = signupUrl

            self.status = status
        }

        public func duplicate() -> RedirectURL {
            let dict = self.dictionary!
            let copy = RedirectURL(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            signupUrl = try container.decode(String.self, forKey: .signupUrl)

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: RedirectToAggregatorResponse
         Used By: Payment
     */
    class RedirectToAggregatorResponse: Codable {
        public var success: Bool

        public var data: RedirectURL

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: RedirectURL, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> RedirectToAggregatorResponse {
            let dict = self.dictionary!
            let copy = RedirectToAggregatorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(RedirectURL.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: CreditDetail
         Used By: Payment
     */
    class CreditDetail: Codable {
        public var signupUrl: String

        public var status: Bool

        public var isRegistered: Bool

        public enum CodingKeys: String, CodingKey {
            case signupUrl = "signup_url"

            case status

            case isRegistered = "is_registered"
        }

        public init(isRegistered: Bool, signupUrl: String, status: Bool) {
            self.signupUrl = signupUrl

            self.status = status

            self.isRegistered = isRegistered
        }

        public func duplicate() -> CreditDetail {
            let dict = self.dictionary!
            let copy = CreditDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            signupUrl = try container.decode(String.self, forKey: .signupUrl)

            status = try container.decode(Bool.self, forKey: .status)

            isRegistered = try container.decode(Bool.self, forKey: .isRegistered)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isRegistered, forKey: .isRegistered)
        }
    }

    /*
         Model: CheckCreditResponse
         Used By: Payment
     */
    class CheckCreditResponse: Codable {
        public var success: Bool

        public var data: CreditDetail

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: CreditDetail, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> CheckCreditResponse {
            let dict = self.dictionary!
            let copy = CheckCreditResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(CreditDetail.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: KYCAddress
         Used By: Payment
     */
    class KYCAddress: Codable {
        public var addressline2: String?

        public var pincode: String

        public var city: String

        public var ownershipType: String?

        public var addressline1: String

        public var state: String

        public var landMark: String?

        public enum CodingKeys: String, CodingKey {
            case addressline2

            case pincode

            case city

            case ownershipType = "ownership_type"

            case addressline1

            case state

            case landMark = "land_mark"
        }

        public init(addressline1: String, addressline2: String?, city: String, landMark: String?, ownershipType: String?, pincode: String, state: String) {
            self.addressline2 = addressline2

            self.pincode = pincode

            self.city = city

            self.ownershipType = ownershipType

            self.addressline1 = addressline1

            self.state = state

            self.landMark = landMark
        }

        public func duplicate() -> KYCAddress {
            let dict = self.dictionary!
            let copy = KYCAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                addressline2 = try container.decode(String.self, forKey: .addressline2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            do {
                ownershipType = try container.decode(String.self, forKey: .ownershipType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressline1 = try container.decode(String.self, forKey: .addressline1)

            state = try container.decode(String.self, forKey: .state)

            do {
                landMark = try container.decode(String.self, forKey: .landMark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(addressline2, forKey: .addressline2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(ownershipType, forKey: .ownershipType)

            try? container.encodeIfPresent(addressline1, forKey: .addressline1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(landMark, forKey: .landMark)
        }
    }

    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var gender: String

        public var middleName: String?

        public var email: String

        public var addressAsPerId: KYCAddress

        public var pan: String?

        public var drivingLicense: String?

        public var fathersName: String?

        public var mobileVerified: Bool

        public var passport: String?

        public var phone: String

        public var lastName: String?

        public var mothersName: String?

        public var firstName: String

        public var emailVerified: Bool

        public var dob: String

        public var voterId: String?

        public enum CodingKeys: String, CodingKey {
            case gender

            case middleName = "middle_name"

            case email

            case addressAsPerId = "address_as_per_id"

            case pan

            case drivingLicense = "driving_license"

            case fathersName = "fathers_name"

            case mobileVerified = "mobile_verified"

            case passport

            case phone

            case lastName = "last_name"

            case mothersName = "mothers_name"

            case firstName = "first_name"

            case emailVerified = "email_verified"

            case dob

            case voterId = "voter_id"
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String?, email: String, emailVerified: Bool, fathersName: String?, firstName: String, gender: String, lastName: String?, middleName: String?, mobileVerified: Bool, mothersName: String?, pan: String?, passport: String?, phone: String, voterId: String?) {
            self.gender = gender

            self.middleName = middleName

            self.email = email

            self.addressAsPerId = addressAsPerId

            self.pan = pan

            self.drivingLicense = drivingLicense

            self.fathersName = fathersName

            self.mobileVerified = mobileVerified

            self.passport = passport

            self.phone = phone

            self.lastName = lastName

            self.mothersName = mothersName

            self.firstName = firstName

            self.emailVerified = emailVerified

            self.dob = dob

            self.voterId = voterId
        }

        public func duplicate() -> UserPersonalInfoInDetails {
            let dict = self.dictionary!
            let copy = UserPersonalInfoInDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gender = try container.decode(String.self, forKey: .gender)

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            do {
                pan = try container.decode(String.self, forKey: .pan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fathersName = try container.decode(String.self, forKey: .fathersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            do {
                passport = try container.decode(String.self, forKey: .passport)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mothersName = try container.decode(String.self, forKey: .mothersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            dob = try container.decode(String.self, forKey: .dob)

            do {
                voterId = try container.decode(String.self, forKey: .voterId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(passport, forKey: .passport)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encode(dob, forKey: .dob)

            try? container.encode(voterId, forKey: .voterId)
        }
    }

    /*
         Model: MarketplaceInfo
         Used By: Payment
     */
    class MarketplaceInfo: Codable {
        public var membershipId: String

        public var dateOfJoining: String?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case membershipId = "membership_id"

            case dateOfJoining = "date_of_joining"

            case name
        }

        public init(dateOfJoining: String?, membershipId: String, name: String) {
            self.membershipId = membershipId

            self.dateOfJoining = dateOfJoining

            self.name = name
        }

        public func duplicate() -> MarketplaceInfo {
            let dict = self.dictionary!
            let copy = MarketplaceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            membershipId = try container.decode(String.self, forKey: .membershipId)

            do {
                dateOfJoining = try container.decode(String.self, forKey: .dateOfJoining)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(membershipId, forKey: .membershipId)

            try? container.encode(dateOfJoining, forKey: .dateOfJoining)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: BusinessDetails
         Used By: Payment
     */
    class BusinessDetails: Codable {
        public var entityType: String?

        public var businessOwnershipType: String?

        public var name: String?

        public var shopAndEstablishment: [String: Any]?

        public var businessType: String?

        public var fda: String?

        public var pan: String?

        public var vintage: String?

        public var fssai: String?

        public var address: KYCAddress?

        public var gstin: String?

        public enum CodingKeys: String, CodingKey {
            case entityType = "entity_type"

            case businessOwnershipType = "business_ownership_type"

            case name

            case shopAndEstablishment = "shop_and_establishment"

            case businessType = "business_type"

            case fda

            case pan

            case vintage

            case fssai

            case address

            case gstin
        }

        public init(address: KYCAddress?, businessOwnershipType: String?, businessType: String?, entityType: String?, fda: String?, fssai: String?, gstin: String?, name: String?, pan: String?, shopAndEstablishment: [String: Any]?, vintage: String?) {
            self.entityType = entityType

            self.businessOwnershipType = businessOwnershipType

            self.name = name

            self.shopAndEstablishment = shopAndEstablishment

            self.businessType = businessType

            self.fda = fda

            self.pan = pan

            self.vintage = vintage

            self.fssai = fssai

            self.address = address

            self.gstin = gstin
        }

        public func duplicate() -> BusinessDetails {
            let dict = self.dictionary!
            let copy = BusinessDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessOwnershipType = try container.decode(String.self, forKey: .businessOwnershipType)

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

            do {
                shopAndEstablishment = try container.decode([String: Any].self, forKey: .shopAndEstablishment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessType = try container.decode(String.self, forKey: .businessType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fda = try container.decode(String.self, forKey: .fda)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pan = try container.decode(String.self, forKey: .pan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vintage = try container.decode(String.self, forKey: .vintage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fssai = try container.decode(String.self, forKey: .fssai)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(KYCAddress.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(entityType, forKey: .entityType)

            try? container.encode(businessOwnershipType, forKey: .businessOwnershipType)

            try? container.encode(name, forKey: .name)

            try? container.encodeIfPresent(shopAndEstablishment, forKey: .shopAndEstablishment)

            try? container.encode(businessType, forKey: .businessType)

            try? container.encode(fda, forKey: .fda)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(vintage, forKey: .vintage)

            try? container.encode(fssai, forKey: .fssai)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encode(gstin, forKey: .gstin)
        }
    }

    /*
         Model: DeviceDetails
         Used By: Payment
     */
    class DeviceDetails: Codable {
        public var deviceType: String?

        public var os: String?

        public var deviceModel: String?

        public var osVersion: String?

        public var deviceMake: String?

        public var identificationNumber: String?

        public var identifierType: String?

        public enum CodingKeys: String, CodingKey {
            case deviceType = "device_type"

            case os

            case deviceModel = "device_model"

            case osVersion = "os_version"

            case deviceMake = "device_make"

            case identificationNumber = "identification_number"

            case identifierType = "identifier_type"
        }

        public init(deviceMake: String?, deviceModel: String?, deviceType: String?, identificationNumber: String?, identifierType: String?, os: String?, osVersion: String?) {
            self.deviceType = deviceType

            self.os = os

            self.deviceModel = deviceModel

            self.osVersion = osVersion

            self.deviceMake = deviceMake

            self.identificationNumber = identificationNumber

            self.identifierType = identifierType
        }

        public func duplicate() -> DeviceDetails {
            let dict = self.dictionary!
            let copy = DeviceDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deviceType = try container.decode(String.self, forKey: .deviceType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                os = try container.decode(String.self, forKey: .os)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceModel = try container.decode(String.self, forKey: .deviceModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                osVersion = try container.decode(String.self, forKey: .osVersion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceMake = try container.decode(String.self, forKey: .deviceMake)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identificationNumber = try container.decode(String.self, forKey: .identificationNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifierType = try container.decode(String.self, forKey: .identifierType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(deviceType, forKey: .deviceType)

            try? container.encode(os, forKey: .os)

            try? container.encode(deviceModel, forKey: .deviceModel)

            try? container.encode(osVersion, forKey: .osVersion)

            try? container.encode(deviceMake, forKey: .deviceMake)

            try? container.encode(identificationNumber, forKey: .identificationNumber)

            try? container.encode(identifierType, forKey: .identifierType)
        }
    }

    /*
         Model: CustomerOnboardingRequest
         Used By: Payment
     */
    class CustomerOnboardingRequest: Codable {
        public var personalInfo: UserPersonalInfoInDetails

        public var marketplaceInfo: MarketplaceInfo?

        public var businessInfo: BusinessDetails?

        public var source: String

        public var aggregator: String

        public var device: DeviceDetails?

        public enum CodingKeys: String, CodingKey {
            case personalInfo = "personal_info"

            case marketplaceInfo = "marketplace_info"

            case businessInfo = "business_info"

            case source

            case aggregator

            case device
        }

        public init(aggregator: String, businessInfo: BusinessDetails?, device: DeviceDetails?, marketplaceInfo: MarketplaceInfo?, personalInfo: UserPersonalInfoInDetails, source: String) {
            self.personalInfo = personalInfo

            self.marketplaceInfo = marketplaceInfo

            self.businessInfo = businessInfo

            self.source = source

            self.aggregator = aggregator

            self.device = device
        }

        public func duplicate() -> CustomerOnboardingRequest {
            let dict = self.dictionary!
            let copy = CustomerOnboardingRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            personalInfo = try container.decode(UserPersonalInfoInDetails.self, forKey: .personalInfo)

            do {
                marketplaceInfo = try container.decode(MarketplaceInfo.self, forKey: .marketplaceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessInfo = try container.decode(BusinessDetails.self, forKey: .businessInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            source = try container.decode(String.self, forKey: .source)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                device = try container.decode(DeviceDetails.self, forKey: .device)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(personalInfo, forKey: .personalInfo)

            try? container.encodeIfPresent(marketplaceInfo, forKey: .marketplaceInfo)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(device, forKey: .device)
        }
    }

    /*
         Model: OnboardSummary
         Used By: Payment
     */
    class OnboardSummary: Codable {
        public var session: [String: Any]

        public var redirectUrl: String

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case session

            case redirectUrl = "redirect_url"

            case status
        }

        public init(redirectUrl: String, session: [String: Any], status: Bool) {
            self.session = session

            self.redirectUrl = redirectUrl

            self.status = status
        }

        public func duplicate() -> OnboardSummary {
            let dict = self.dictionary!
            let copy = OnboardSummary(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            session = try container.decode([String: Any].self, forKey: .session)

            redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(session, forKey: .session)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: CustomerOnboardingResponse
         Used By: Payment
     */
    class CustomerOnboardingResponse: Codable {
        public var success: Bool

        public var data: OnboardSummary

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: OnboardSummary, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> CustomerOnboardingResponse {
            let dict = self.dictionary!
            let copy = CustomerOnboardingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(OnboardSummary.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
