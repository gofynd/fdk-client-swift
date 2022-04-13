import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: AggregatorConfigDetail
         Used By: Payment
     */
    class AggregatorConfigDetail: Codable {
        public var configType: String

        public var verifyApi: String?

        public var pin: String?

        public var key: String

        public var merchantKey: String?

        public var merchantId: String?

        public var api: String?

        public var sdk: Bool?

        public var secret: String

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case configType = "config_type"

            case verifyApi = "verify_api"

            case pin

            case key

            case merchantKey = "merchant_key"

            case merchantId = "merchant_id"

            case api

            case sdk

            case secret

            case userId = "user_id"
        }

        public init(api: String?, configType: String, key: String, merchantId: String?, merchantKey: String?, pin: String?, sdk: Bool?, secret: String, userId: String?, verifyApi: String?) {
            self.configType = configType

            self.verifyApi = verifyApi

            self.pin = pin

            self.key = key

            self.merchantKey = merchantKey

            self.merchantId = merchantId

            self.api = api

            self.sdk = sdk

            self.secret = secret

            self.userId = userId
        }

        public func duplicate() -> AggregatorConfigDetail {
            let dict = self.dictionary!
            let copy = AggregatorConfigDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            configType = try container.decode(String.self, forKey: .configType)

            do {
                verifyApi = try container.decode(String.self, forKey: .verifyApi)

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

            key = try container.decode(String.self, forKey: .key)

            do {
                merchantKey = try container.decode(String.self, forKey: .merchantKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantId = try container.decode(String.self, forKey: .merchantId)

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

            do {
                sdk = try container.decode(Bool.self, forKey: .sdk)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encode(verifyApi, forKey: .verifyApi)

            try? container.encode(pin, forKey: .pin)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encode(merchantKey, forKey: .merchantKey)

            try? container.encode(merchantId, forKey: .merchantId)

            try? container.encode(api, forKey: .api)

            try? container.encode(sdk, forKey: .sdk)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encode(userId, forKey: .userId)
        }
    }

    /*
         Model: AggregatorsConfigDetailResponse
         Used By: Payment
     */
    class AggregatorsConfigDetailResponse: Codable {
        public var env: String

        public var mswipe: AggregatorConfigDetail?

        public var ccavenue: AggregatorConfigDetail?

        public var juspay: AggregatorConfigDetail?

        public var payumoney: AggregatorConfigDetail?

        public var rupifi: AggregatorConfigDetail?

        public var success: Bool

        public var razorpay: AggregatorConfigDetail?

        public var stripe: AggregatorConfigDetail?

        public var simpl: AggregatorConfigDetail?

        public enum CodingKeys: String, CodingKey {
            case env

            case mswipe

            case ccavenue

            case juspay

            case payumoney

            case rupifi

            case success

            case razorpay

            case stripe

            case simpl
        }

        public init(ccavenue: AggregatorConfigDetail?, env: String, juspay: AggregatorConfigDetail?, mswipe: AggregatorConfigDetail?, payumoney: AggregatorConfigDetail?, razorpay: AggregatorConfigDetail?, rupifi: AggregatorConfigDetail?, simpl: AggregatorConfigDetail?, stripe: AggregatorConfigDetail?, success: Bool) {
            self.env = env

            self.mswipe = mswipe

            self.ccavenue = ccavenue

            self.juspay = juspay

            self.payumoney = payumoney

            self.rupifi = rupifi

            self.success = success

            self.razorpay = razorpay

            self.stripe = stripe

            self.simpl = simpl
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
                mswipe = try container.decode(AggregatorConfigDetail.self, forKey: .mswipe)

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

            success = try container.decode(Bool.self, forKey: .success)

            do {
                razorpay = try container.decode(AggregatorConfigDetail.self, forKey: .razorpay)

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
                simpl = try container.decode(AggregatorConfigDetail.self, forKey: .simpl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(env, forKey: .env)

            try? container.encodeIfPresent(mswipe, forKey: .mswipe)

            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)

            try? container.encodeIfPresent(juspay, forKey: .juspay)

            try? container.encodeIfPresent(payumoney, forKey: .payumoney)

            try? container.encodeIfPresent(rupifi, forKey: .rupifi)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(razorpay, forKey: .razorpay)

            try? container.encodeIfPresent(stripe, forKey: .stripe)

            try? container.encodeIfPresent(simpl, forKey: .simpl)
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
        public var cardId: String

        public var nickname: String?

        public var nameOnCard: String?

        public var refresh: Bool?

        public enum CodingKeys: String, CodingKey {
            case cardId = "card_id"

            case nickname

            case nameOnCard = "name_on_card"

            case refresh
        }

        public init(cardId: String, nameOnCard: String?, nickname: String?, refresh: Bool?) {
            self.cardId = cardId

            self.nickname = nickname

            self.nameOnCard = nameOnCard

            self.refresh = refresh
        }

        public func duplicate() -> AttachCardRequest {
            let dict = self.dictionary!
            let copy = AttachCardRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardId = try container.decode(String.self, forKey: .cardId)

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

            do {
                refresh = try container.decode(Bool.self, forKey: .refresh)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encodeIfPresent(nickname, forKey: .nickname)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encode(refresh, forKey: .refresh)
        }
    }

    /*
         Model: AttachCardsResponse
         Used By: Payment
     */
    class AttachCardsResponse: Codable {
        public var data: [String: Any]

        public var success: Bool

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case message
        }

        public init(data: [String: Any], message: String?, success: Bool) {
            self.data = data

            self.success = success

            self.message = message
        }

        public func duplicate() -> AttachCardsResponse {
            let dict = self.dictionary!
            let copy = AttachCardsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([String: Any].self, forKey: .data)

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

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

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
        public var success: Bool

        public var cards: CardPaymentGateway

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case cards

            case message
        }

        public init(cards: CardPaymentGateway, message: String, success: Bool) {
            self.success = success

            self.cards = cards

            self.message = message
        }

        public func duplicate() -> ActiveCardPaymentGatewayResponse {
            let dict = self.dictionary!
            let copy = ActiveCardPaymentGatewayResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            cards = try container.decode(CardPaymentGateway.self, forKey: .cards)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(cards, forKey: .cards)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: Card
         Used By: Payment
     */
    class Card: Codable {
        public var aggregatorName: String

        public var cardIsin: String?

        public var expYear: Int?

        public var cardBrandImage: String?

        public var cardBrand: String?

        public var cardIssuer: String?

        public var cardReference: String?

        public var cardType: String?

        public var nickname: String?

        public var cardName: String?

        public var expired: Bool?

        public var expMonth: Int?

        public var cardFingerprint: String?

        public var cardId: String?

        public var cardToken: String?

        public var cardNumber: String?

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case cardIsin = "card_isin"

            case expYear = "exp_year"

            case cardBrandImage = "card_brand_image"

            case cardBrand = "card_brand"

            case cardIssuer = "card_issuer"

            case cardReference = "card_reference"

            case cardType = "card_type"

            case nickname

            case cardName = "card_name"

            case expired

            case expMonth = "exp_month"

            case cardFingerprint = "card_fingerprint"

            case cardId = "card_id"

            case cardToken = "card_token"

            case cardNumber = "card_number"
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, expired: Bool?, expMonth: Int?, expYear: Int?, nickname: String?) {
            self.aggregatorName = aggregatorName

            self.cardIsin = cardIsin

            self.expYear = expYear

            self.cardBrandImage = cardBrandImage

            self.cardBrand = cardBrand

            self.cardIssuer = cardIssuer

            self.cardReference = cardReference

            self.cardType = cardType

            self.nickname = nickname

            self.cardName = cardName

            self.expired = expired

            self.expMonth = expMonth

            self.cardFingerprint = cardFingerprint

            self.cardId = cardId

            self.cardToken = cardToken

            self.cardNumber = cardNumber
        }

        public func duplicate() -> Card {
            let dict = self.dictionary!
            let copy = Card(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

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
                cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)

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
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

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
                cardType = try container.decode(String.self, forKey: .cardType)

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
                cardName = try container.decode(String.self, forKey: .cardName)

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
                expMonth = try container.decode(Int.self, forKey: .expMonth)

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
                cardId = try container.decode(String.self, forKey: .cardId)

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
                cardNumber = try container.decode(String.self, forKey: .cardNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(cardNumber, forKey: .cardNumber)
        }
    }

    /*
         Model: ListCardsResponse
         Used By: Payment
     */
    class ListCardsResponse: Codable {
        public var data: [Card]?

        public var success: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case message
        }

        public init(data: [Card]?, message: String, success: Bool) {
            self.data = data

            self.success = success

            self.message = message
        }

        public func duplicate() -> ListCardsResponse {
            let dict = self.dictionary!
            let copy = ListCardsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([Card].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

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
        public var transactionAmountInPaise: Int

        public var payload: String

        public var aggregator: String

        public var phoneNumber: String

        public var merchantParams: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case transactionAmountInPaise = "transaction_amount_in_paise"

            case payload

            case aggregator

            case phoneNumber = "phone_number"

            case merchantParams = "merchant_params"
        }

        public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
            self.transactionAmountInPaise = transactionAmountInPaise

            self.payload = payload

            self.aggregator = aggregator

            self.phoneNumber = phoneNumber

            self.merchantParams = merchantParams
        }

        public func duplicate() -> ValidateCustomerRequest {
            let dict = self.dictionary!
            let copy = ValidateCustomerRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)

            payload = try container.decode(String.self, forKey: .payload)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)

            try? container.encode(payload, forKey: .payload)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
        }
    }

    /*
         Model: ValidateCustomerResponse
         Used By: Payment
     */
    class ValidateCustomerResponse: Codable {
        public var data: [String: Any]

        public var success: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case message
        }

        public init(data: [String: Any], message: String, success: Bool) {
            self.data = data

            self.success = success

            self.message = message
        }

        public func duplicate() -> ValidateCustomerResponse {
            let dict = self.dictionary!
            let copy = ValidateCustomerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([String: Any].self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: ChargeCustomerRequest
         Used By: Payment
     */
    class ChargeCustomerRequest: Codable {
        public var aggregator: String

        public var verified: Bool?

        public var transactionToken: String?

        public var amount: Int

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case verified

            case transactionToken = "transaction_token"

            case amount

            case orderId = "order_id"
        }

        public init(aggregator: String, amount: Int, orderId: String, transactionToken: String?, verified: Bool?) {
            self.aggregator = aggregator

            self.verified = verified

            self.transactionToken = transactionToken

            self.amount = amount

            self.orderId = orderId
        }

        public func duplicate() -> ChargeCustomerRequest {
            let dict = self.dictionary!
            let copy = ChargeCustomerRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transactionToken = try container.decode(String.self, forKey: .transactionToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(verified, forKey: .verified)

            try? container.encode(transactionToken, forKey: .transactionToken)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }

    /*
         Model: ChargeCustomerResponse
         Used By: Payment
     */
    class ChargeCustomerResponse: Codable {
        public var aggregator: String

        public var success: Bool

        public var status: String

        public var cartId: String?

        public var deliveryAddressId: String?

        public var orderId: String

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case success

            case status

            case cartId = "cart_id"

            case deliveryAddressId = "delivery_address_id"

            case orderId = "order_id"

            case message
        }

        public init(aggregator: String, cartId: String?, deliveryAddressId: String?, message: String, orderId: String, status: String, success: Bool) {
            self.aggregator = aggregator

            self.success = success

            self.status = status

            self.cartId = cartId

            self.deliveryAddressId = deliveryAddressId

            self.orderId = orderId

            self.message = message
        }

        public func duplicate() -> ChargeCustomerResponse {
            let dict = self.dictionary!
            let copy = ChargeCustomerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            success = try container.decode(Bool.self, forKey: .success)

            status = try container.decode(String.self, forKey: .status)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(cartId, forKey: .cartId)

            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var currency: String

        public var contact: String

        public var aggregator: String

        public var vpa: String?

        public var customerId: String

        public var merchantOrderId: String

        public var email: String

        public var amount: Int

        public var timeout: Int?

        public var orderId: String

        public var method: String

        public var razorpayPaymentId: String?

        public enum CodingKeys: String, CodingKey {
            case currency

            case contact

            case aggregator

            case vpa

            case customerId = "customer_id"

            case merchantOrderId = "merchant_order_id"

            case email

            case amount

            case timeout

            case orderId = "order_id"

            case method

            case razorpayPaymentId = "razorpay_payment_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String?, timeout: Int?, vpa: String?) {
            self.currency = currency

            self.contact = contact

            self.aggregator = aggregator

            self.vpa = vpa

            self.customerId = customerId

            self.merchantOrderId = merchantOrderId

            self.email = email

            self.amount = amount

            self.timeout = timeout

            self.orderId = orderId

            self.method = method

            self.razorpayPaymentId = razorpayPaymentId
        }

        public func duplicate() -> PaymentInitializationRequest {
            let dict = self.dictionary!
            let copy = PaymentInitializationRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            contact = try container.decode(String.self, forKey: .contact)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            email = try container.decode(String.self, forKey: .email)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            method = try container.decode(String.self, forKey: .method)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
        }
    }

    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */
    class PaymentInitializationResponse: Codable {
        public var aggregatorOrderId: String?

        public var bqrImage: String?

        public var currency: String?

        public var virtualId: String?

        public var aggregator: String

        public var vpa: String?

        public var customerId: String?

        public var upiPollUrl: String?

        public var merchantOrderId: String

        public var success: Bool

        public var status: String?

        public var amount: Int?

        public var timeout: Int?

        public var method: String

        public var pollingUrl: String

        public var razorpayPaymentId: String?

        public enum CodingKeys: String, CodingKey {
            case aggregatorOrderId = "aggregator_order_id"

            case bqrImage = "bqr_image"

            case currency

            case virtualId = "virtual_id"

            case aggregator

            case vpa

            case customerId = "customer_id"

            case upiPollUrl = "upi_poll_url"

            case merchantOrderId = "merchant_order_id"

            case success

            case status

            case amount

            case timeout

            case method

            case pollingUrl = "polling_url"

            case razorpayPaymentId = "razorpay_payment_id"
        }

        public init(aggregator: String, aggregatorOrderId: String?, amount: Int?, bqrImage: String?, currency: String?, customerId: String?, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String?, status: String?, success: Bool, timeout: Int?, upiPollUrl: String?, virtualId: String?, vpa: String?) {
            self.aggregatorOrderId = aggregatorOrderId

            self.bqrImage = bqrImage

            self.currency = currency

            self.virtualId = virtualId

            self.aggregator = aggregator

            self.vpa = vpa

            self.customerId = customerId

            self.upiPollUrl = upiPollUrl

            self.merchantOrderId = merchantOrderId

            self.success = success

            self.status = status

            self.amount = amount

            self.timeout = timeout

            self.method = method

            self.pollingUrl = pollingUrl

            self.razorpayPaymentId = razorpayPaymentId
        }

        public func duplicate() -> PaymentInitializationResponse {
            let dict = self.dictionary!
            let copy = PaymentInitializationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

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
                virtualId = try container.decode(String.self, forKey: .virtualId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

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
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Int.self, forKey: .amount)

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

            method = try container.decode(String.self, forKey: .method)

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(currency, forKey: .currency)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
        }
    }

    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var currency: String

        public var contact: String

        public var aggregator: String

        public var vpa: String

        public var customerId: String

        public var merchantOrderId: String

        public var status: String

        public var email: String

        public var amount: Int

        public var orderId: String

        public var method: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case contact

            case aggregator

            case vpa

            case customerId = "customer_id"

            case merchantOrderId = "merchant_order_id"

            case status

            case email

            case amount

            case orderId = "order_id"

            case method
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.currency = currency

            self.contact = contact

            self.aggregator = aggregator

            self.vpa = vpa

            self.customerId = customerId

            self.merchantOrderId = merchantOrderId

            self.status = status

            self.email = email

            self.amount = amount

            self.orderId = orderId

            self.method = method
        }

        public func duplicate() -> PaymentStatusUpdateRequest {
            let dict = self.dictionary!
            let copy = PaymentStatusUpdateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            contact = try container.decode(String.self, forKey: .contact)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            vpa = try container.decode(String.self, forKey: .vpa)

            customerId = try container.decode(String.self, forKey: .customerId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            status = try container.decode(String.self, forKey: .status)

            email = try container.decode(String.self, forKey: .email)

            amount = try container.decode(Int.self, forKey: .amount)

            orderId = try container.decode(String.self, forKey: .orderId)

            method = try container.decode(String.self, forKey: .method)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(method, forKey: .method)
        }
    }

    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */
    class PaymentStatusUpdateResponse: Codable {
        public var aggregatorName: String

        public var status: String

        public var retry: Bool

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case status

            case retry
        }

        public init(aggregatorName: String, retry: Bool, status: String) {
            self.aggregatorName = aggregatorName

            self.status = status

            self.retry = retry
        }

        public func duplicate() -> PaymentStatusUpdateResponse {
            let dict = self.dictionary!
            let copy = PaymentStatusUpdateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            status = try container.decode(String.self, forKey: .status)

            retry = try container.decode(Bool.self, forKey: .retry)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(retry, forKey: .retry)
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

        public var displayName: String?

        public var code: String?

        public var logos: PaymentModeLogo?

        public enum CodingKeys: String, CodingKey {
            case packageName = "package_name"

            case displayName = "display_name"

            case code

            case logos
        }

        public init(code: String?, displayName: String?, logos: PaymentModeLogo?, packageName: String?) {
            self.packageName = packageName

            self.displayName = displayName

            self.code = code

            self.logos = logos
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
                displayName = try container.decode(String.self, forKey: .displayName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(packageName, forKey: .packageName)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(code, forKey: .code)

            try? container.encode(logos, forKey: .logos)
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
        public var cardBrandImage: String?

        public var intentApp: [IntentApp]?

        public var cardFingerprint: String?

        public var cardBrand: String?

        public var merchantCode: String?

        public var aggregatorName: String

        public var cardIssuer: String?

        public var intentAppErrorDictList: [IntentAppErrorList]?

        public var intentAppErrorList: [String]?

        public var displayName: String?

        public var cardIsin: String?

        public var code: String?

        public var cardNumber: String?

        public var fyndVpa: String?

        public var displayPriority: Int?

        public var cardType: String?

        public var expired: Bool?

        public var cardName: String?

        public var timeout: Int?

        public var name: String?

        public var retryCount: Int?

        public var cardToken: String?

        public var logoUrl: PaymentModeLogo?

        public var intentFlow: Bool?

        public var expYear: Int?

        public var cardReference: String?

        public var nickname: String?

        public var expMonth: Int?

        public var cardId: String?

        public enum CodingKeys: String, CodingKey {
            case cardBrandImage = "card_brand_image"

            case intentApp = "intent_app"

            case cardFingerprint = "card_fingerprint"

            case cardBrand = "card_brand"

            case merchantCode = "merchant_code"

            case aggregatorName = "aggregator_name"

            case cardIssuer = "card_issuer"

            case intentAppErrorDictList = "intent_app_error_dict_list"

            case intentAppErrorList = "intent_app_error_list"

            case displayName = "display_name"

            case cardIsin = "card_isin"

            case code

            case cardNumber = "card_number"

            case fyndVpa = "fynd_vpa"

            case displayPriority = "display_priority"

            case cardType = "card_type"

            case expired

            case cardName = "card_name"

            case timeout

            case name

            case retryCount = "retry_count"

            case cardToken = "card_token"

            case logoUrl = "logo_url"

            case intentFlow = "intent_flow"

            case expYear = "exp_year"

            case cardReference = "card_reference"

            case nickname

            case expMonth = "exp_month"

            case cardId = "card_id"
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
            self.cardBrandImage = cardBrandImage

            self.intentApp = intentApp

            self.cardFingerprint = cardFingerprint

            self.cardBrand = cardBrand

            self.merchantCode = merchantCode

            self.aggregatorName = aggregatorName

            self.cardIssuer = cardIssuer

            self.intentAppErrorDictList = intentAppErrorDictList

            self.intentAppErrorList = intentAppErrorList

            self.displayName = displayName

            self.cardIsin = cardIsin

            self.code = code

            self.cardNumber = cardNumber

            self.fyndVpa = fyndVpa

            self.displayPriority = displayPriority

            self.cardType = cardType

            self.expired = expired

            self.cardName = cardName

            self.timeout = timeout

            self.name = name

            self.retryCount = retryCount

            self.cardToken = cardToken

            self.logoUrl = logoUrl

            self.intentFlow = intentFlow

            self.expYear = expYear

            self.cardReference = cardReference

            self.nickname = nickname

            self.expMonth = expMonth

            self.cardId = cardId
        }

        public func duplicate() -> PaymentModeList {
            let dict = self.dictionary!
            let copy = PaymentModeList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)

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
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

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
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

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
                intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)

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
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

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
                cardNumber = try container.decode(String.self, forKey: .cardNumber)

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
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)

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
                expired = try container.decode(Bool.self, forKey: .expired)

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
                timeout = try container.decode(Int.self, forKey: .timeout)

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
                retryCount = try container.decode(Int.self, forKey: .retryCount)

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
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

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
                expYear = try container.decode(Int.self, forKey: .expYear)

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
                nickname = try container.decode(String.self, forKey: .nickname)

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
                cardId = try container.decode(String.self, forKey: .cardId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(intentApp, forKey: .intentApp)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)

            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(code, forKey: .code)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(fyndVpa, forKey: .fyndVpa)

            try? container.encode(displayPriority, forKey: .displayPriority)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(name, forKey: .name)

            try? container.encode(retryCount, forKey: .retryCount)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(intentFlow, forKey: .intentFlow)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(cardId, forKey: .cardId)
        }
    }

    /*
         Model: RootPaymentMode
         Used By: Payment
     */
    class RootPaymentMode: Codable {
        public var aggregatorName: String?

        public var addCardEnabled: Bool?

        public var displayPriority: Int

        public var list: [PaymentModeList]?

        public var name: String

        public var displayName: String

        public var anonymousEnable: Bool?

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case addCardEnabled = "add_card_enabled"

            case displayPriority = "display_priority"

            case list

            case name

            case displayName = "display_name"

            case anonymousEnable = "anonymous_enable"
        }

        public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, name: String) {
            self.aggregatorName = aggregatorName

            self.addCardEnabled = addCardEnabled

            self.displayPriority = displayPriority

            self.list = list

            self.name = name

            self.displayName = displayName

            self.anonymousEnable = anonymousEnable
        }

        public func duplicate() -> RootPaymentMode {
            let dict = self.dictionary!
            let copy = RootPaymentMode(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)
        }
    }

    /*
         Model: AggregatorRoute
         Used By: Payment
     */
    class AggregatorRoute: Codable {
        public var data: [String: Any]?

        public var paymentFlowData: String?

        public var paymentFlow: String?

        public var apiLink: String?

        public enum CodingKeys: String, CodingKey {
            case data

            case paymentFlowData = "payment_flow_data"

            case paymentFlow = "payment_flow"

            case apiLink = "api_link"
        }

        public init(apiLink: String?, data: [String: Any]?, paymentFlow: String?, paymentFlowData: String?) {
            self.data = data

            self.paymentFlowData = paymentFlowData

            self.paymentFlow = paymentFlow

            self.apiLink = apiLink
        }

        public func duplicate() -> AggregatorRoute {
            let dict = self.dictionary!
            let copy = AggregatorRoute(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([String: Any].self, forKey: .data)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(data, forKey: .data)

            try? container.encode(paymentFlowData, forKey: .paymentFlowData)

            try? container.encode(paymentFlow, forKey: .paymentFlow)

            try? container.encode(apiLink, forKey: .apiLink)
        }
    }

    /*
         Model: PaymentFlow
         Used By: Payment
     */
    class PaymentFlow: Codable {
        public var mswipe: AggregatorRoute?

        public var ccavenue: AggregatorRoute?

        public var juspay: AggregatorRoute?

        public var payubiz: AggregatorRoute?

        public var upiRazorpay: AggregatorRoute?

        public var fynd: AggregatorRoute?

        public var bqrRazorpay: AggregatorRoute?

        public var rupifi: AggregatorRoute?

        public var razorpay: AggregatorRoute?

        public var stripe: AggregatorRoute?

        public var simpl: AggregatorRoute?

        public enum CodingKeys: String, CodingKey {
            case mswipe

            case ccavenue

            case juspay

            case payubiz

            case upiRazorpay = "upi_razorpay"

            case fynd

            case bqrRazorpay = "bqr_razorpay"

            case rupifi

            case razorpay

            case stripe

            case simpl
        }

        public init(bqrRazorpay: AggregatorRoute?, ccavenue: AggregatorRoute?, fynd: AggregatorRoute?, juspay: AggregatorRoute?, mswipe: AggregatorRoute?, payubiz: AggregatorRoute?, razorpay: AggregatorRoute?, rupifi: AggregatorRoute?, simpl: AggregatorRoute?, stripe: AggregatorRoute?, upiRazorpay: AggregatorRoute?) {
            self.mswipe = mswipe

            self.ccavenue = ccavenue

            self.juspay = juspay

            self.payubiz = payubiz

            self.upiRazorpay = upiRazorpay

            self.fynd = fynd

            self.bqrRazorpay = bqrRazorpay

            self.rupifi = rupifi

            self.razorpay = razorpay

            self.stripe = stripe

            self.simpl = simpl
        }

        public func duplicate() -> PaymentFlow {
            let dict = self.dictionary!
            let copy = PaymentFlow(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mswipe = try container.decode(AggregatorRoute.self, forKey: .mswipe)

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
                juspay = try container.decode(AggregatorRoute.self, forKey: .juspay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payubiz = try container.decode(AggregatorRoute.self, forKey: .payubiz)

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
                fynd = try container.decode(AggregatorRoute.self, forKey: .fynd)

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
                rupifi = try container.decode(AggregatorRoute.self, forKey: .rupifi)

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
                stripe = try container.decode(AggregatorRoute.self, forKey: .stripe)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mswipe, forKey: .mswipe)

            try? container.encode(ccavenue, forKey: .ccavenue)

            try? container.encode(juspay, forKey: .juspay)

            try? container.encode(payubiz, forKey: .payubiz)

            try? container.encode(upiRazorpay, forKey: .upiRazorpay)

            try? container.encode(fynd, forKey: .fynd)

            try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)

            try? container.encode(rupifi, forKey: .rupifi)

            try? container.encode(razorpay, forKey: .razorpay)

            try? container.encode(stripe, forKey: .stripe)

            try? container.encode(simpl, forKey: .simpl)
        }
    }

    /*
         Model: PaymentOptionAndFlow
         Used By: Payment
     */
    class PaymentOptionAndFlow: Codable {
        public var paymentOption: [RootPaymentMode]

        public var paymentFlows: PaymentFlow

        public enum CodingKeys: String, CodingKey {
            case paymentOption = "payment_option"

            case paymentFlows = "payment_flows"
        }

        public init(paymentFlows: PaymentFlow, paymentOption: [RootPaymentMode]) {
            self.paymentOption = paymentOption

            self.paymentFlows = paymentFlows
        }

        public func duplicate() -> PaymentOptionAndFlow {
            let dict = self.dictionary!
            let copy = PaymentOptionAndFlow(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentOption = try container.decode([RootPaymentMode].self, forKey: .paymentOption)

            paymentFlows = try container.decode(PaymentFlow.self, forKey: .paymentFlows)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)

            try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
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
        public var data: RupifiBannerData

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case success
        }

        public init(data: RupifiBannerData, success: Bool) {
            self.data = data

            self.success = success
        }

        public func duplicate() -> RupifiBannerResponse {
            let dict = self.dictionary!
            let copy = RupifiBannerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(RupifiBannerData.self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: TransferItemsDetails
         Used By: Payment
     */
    class TransferItemsDetails: Codable {
        public var id: Int

        public var logoSmall: String

        public var logoLarge: String

        public var name: String

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case logoSmall = "logo_small"

            case logoLarge = "logo_large"

            case name

            case displayName = "display_name"
        }

        public init(displayName: String?, id: Int, logoLarge: String, logoSmall: String, name: String) {
            self.id = id

            self.logoSmall = logoSmall

            self.logoLarge = logoLarge

            self.name = name

            self.displayName = displayName
        }

        public func duplicate() -> TransferItemsDetails {
            let dict = self.dictionary!
            let copy = TransferItemsDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            logoSmall = try container.decode(String.self, forKey: .logoSmall)

            logoLarge = try container.decode(String.self, forKey: .logoLarge)

            name = try container.decode(String.self, forKey: .name)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)

            try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
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
        public var id: Int

        public var bankName: String

        public var isActive: Bool

        public var email: String

        public var subtitle: String

        public var accountNo: String

        public var comment: Bool?

        public var beneficiaryId: String

        public var displayName: String

        public var delightsUserName: String?

        public var transferMode: String

        public var ifscCode: String

        public var accountHolder: String

        public var modifiedOn: String

        public var title: String

        public var branchName: Bool?

        public var createdOn: String

        public var mobile: Bool?

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case id

            case bankName = "bank_name"

            case isActive = "is_active"

            case email

            case subtitle

            case accountNo = "account_no"

            case comment

            case beneficiaryId = "beneficiary_id"

            case displayName = "display_name"

            case delightsUserName = "delights_user_name"

            case transferMode = "transfer_mode"

            case ifscCode = "ifsc_code"

            case accountHolder = "account_holder"

            case modifiedOn = "modified_on"

            case title

            case branchName = "branch_name"

            case createdOn = "created_on"

            case mobile

            case address
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String?, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.id = id

            self.bankName = bankName

            self.isActive = isActive

            self.email = email

            self.subtitle = subtitle

            self.accountNo = accountNo

            self.comment = comment

            self.beneficiaryId = beneficiaryId

            self.displayName = displayName

            self.delightsUserName = delightsUserName

            self.transferMode = transferMode

            self.ifscCode = ifscCode

            self.accountHolder = accountHolder

            self.modifiedOn = modifiedOn

            self.title = title

            self.branchName = branchName

            self.createdOn = createdOn

            self.mobile = mobile

            self.address = address
        }

        public func duplicate() -> OrderBeneficiaryDetails {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            bankName = try container.decode(String.self, forKey: .bankName)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            email = try container.decode(String.self, forKey: .email)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            title = try container.decode(String.self, forKey: .title)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }

    /*
         Model: OrderBeneficiaryResponse
         Used By: Payment
     */
    class OrderBeneficiaryResponse: Codable {
        public var showBeneficiaryDetails: Bool?

        public var beneficiaries: [OrderBeneficiaryDetails]?

        public enum CodingKeys: String, CodingKey {
            case showBeneficiaryDetails = "show_beneficiary_details"

            case beneficiaries
        }

        public init(beneficiaries: [OrderBeneficiaryDetails]?, showBeneficiaryDetails: Bool?) {
            self.showBeneficiaryDetails = showBeneficiaryDetails

            self.beneficiaries = beneficiaries
        }

        public func duplicate() -> OrderBeneficiaryResponse {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                beneficiaries = try container.decode([OrderBeneficiaryDetails].self, forKey: .beneficiaries)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(showBeneficiaryDetails, forKey: .showBeneficiaryDetails)

            try? container.encode(beneficiaries, forKey: .beneficiaries)
        }
    }

    /*
         Model: NotFoundResourceError
         Used By: Payment
     */
    class NotFoundResourceError: Codable {
        public var success: Bool

        public var code: String

        public var description: String

        public enum CodingKeys: String, CodingKey {
            case success

            case code

            case description
        }

        public init(code: String, description: String, success: Bool) {
            self.success = success

            self.code = code

            self.description = description
        }

        public func duplicate() -> NotFoundResourceError {
            let dict = self.dictionary!
            let copy = NotFoundResourceError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            code = try container.decode(String.self, forKey: .code)

            description = try container.decode(String.self, forKey: .description)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }

    /*
         Model: IfscCodeResponse
         Used By: Payment
     */
    class IfscCodeResponse: Codable {
        public var success: Bool?

        public var bankName: String

        public var branchName: String

        public enum CodingKeys: String, CodingKey {
            case success

            case bankName = "bank_name"

            case branchName = "branch_name"
        }

        public init(bankName: String, branchName: String, success: Bool?) {
            self.success = success

            self.bankName = bankName

            self.branchName = branchName
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

            bankName = try container.decode(String.self, forKey: .bankName)

            branchName = try container.decode(String.self, forKey: .branchName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
        }
    }

    /*
         Model: ErrorCodeDescription
         Used By: Payment
     */
    class ErrorCodeDescription: Codable {
        public var success: Bool

        public var code: String

        public var description: String

        public enum CodingKeys: String, CodingKey {
            case success

            case code

            case description
        }

        public init(code: String, description: String, success: Bool) {
            self.success = success

            self.code = code

            self.description = description
        }

        public func duplicate() -> ErrorCodeDescription {
            let dict = self.dictionary!
            let copy = ErrorCodeDescription(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            code = try container.decode(String.self, forKey: .code)

            description = try container.decode(String.self, forKey: .description)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }

    /*
         Model: AddBeneficiaryViaOtpVerificationRequest
         Used By: Payment
     */
    class AddBeneficiaryViaOtpVerificationRequest: Codable {
        public var otp: String

        public var requestId: String

        public var hashKey: String

        public enum CodingKeys: String, CodingKey {
            case otp

            case requestId = "request_id"

            case hashKey = "hash_key"
        }

        public init(hashKey: String, otp: String, requestId: String) {
            self.otp = otp

            self.requestId = requestId

            self.hashKey = hashKey
        }

        public func duplicate() -> AddBeneficiaryViaOtpVerificationRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryViaOtpVerificationRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            otp = try container.decode(String.self, forKey: .otp)

            requestId = try container.decode(String.self, forKey: .requestId)

            hashKey = try container.decode(String.self, forKey: .hashKey)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(hashKey, forKey: .hashKey)
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
        public var success: String

        public var description: String

        public var isVerifiedFlag: Bool

        public enum CodingKeys: String, CodingKey {
            case success

            case description

            case isVerifiedFlag = "is_verified_flag"
        }

        public init(description: String, isVerifiedFlag: Bool, success: String) {
            self.success = success

            self.description = description

            self.isVerifiedFlag = isVerifiedFlag
        }

        public func duplicate() -> WrongOtpError {
            let dict = self.dictionary!
            let copy = WrongOtpError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(String.self, forKey: .success)

            description = try container.decode(String.self, forKey: .description)

            isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
        }
    }

    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */
    class BeneficiaryModeDetails: Codable {
        public var ifscCode: String

        public var bankName: String

        public var wallet: String?

        public var mobile: String

        public var vpa: String?

        public var accountHolder: String

        public var address: String?

        public var email: String

        public var accountNo: String

        public var comment: String?

        public var branchName: String

        public enum CodingKeys: String, CodingKey {
            case ifscCode = "ifsc_code"

            case bankName = "bank_name"

            case wallet

            case mobile

            case vpa

            case accountHolder = "account_holder"

            case address

            case email

            case accountNo = "account_no"

            case comment

            case branchName = "branch_name"
        }

        public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String, vpa: String?, wallet: String?) {
            self.ifscCode = ifscCode

            self.bankName = bankName

            self.wallet = wallet

            self.mobile = mobile

            self.vpa = vpa

            self.accountHolder = accountHolder

            self.address = address

            self.email = email

            self.accountNo = accountNo

            self.comment = comment

            self.branchName = branchName
        }

        public func duplicate() -> BeneficiaryModeDetails {
            let dict = self.dictionary!
            let copy = BeneficiaryModeDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobile = try container.decode(String.self, forKey: .mobile)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            branchName = try container.decode(String.self, forKey: .branchName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
        }
    }

    /*
         Model: AddBeneficiaryDetailsRequest
         Used By: Payment
     */
    class AddBeneficiaryDetailsRequest: Codable {
        public var shipmentId: String

        public var requestId: String?

        public var delights: Bool

        public var otp: String?

        public var details: BeneficiaryModeDetails

        public var orderId: String

        public var transferMode: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case requestId = "request_id"

            case delights

            case otp

            case details

            case orderId = "order_id"

            case transferMode = "transfer_mode"
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String?, requestId: String?, shipmentId: String, transferMode: String) {
            self.shipmentId = shipmentId

            self.requestId = requestId

            self.delights = delights

            self.otp = otp

            self.details = details

            self.orderId = orderId

            self.transferMode = transferMode
        }

        public func duplicate() -> AddBeneficiaryDetailsRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            delights = try container.decode(Bool.self, forKey: .delights)

            do {
                otp = try container.decode(String.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)

            orderId = try container.decode(String.self, forKey: .orderId)

            transferMode = try container.decode(String.self, forKey: .transferMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(delights, forKey: .delights)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
        }
    }

    /*
         Model: RefundAccountResponse
         Used By: Payment
     */
    class RefundAccountResponse: Codable {
        public var data: [String: Any]?

        public var success: Bool

        public var isVerifiedFlag: Bool?

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case isVerifiedFlag = "is_verified_flag"

            case message
        }

        public init(data: [String: Any]?, isVerifiedFlag: Bool?, message: String, success: Bool) {
            self.data = data

            self.success = success

            self.isVerifiedFlag = isVerifiedFlag

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
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: BankDetailsForOTP
         Used By: Payment
     */
    class BankDetailsForOTP: Codable {
        public var ifscCode: String

        public var bankName: String

        public var accountHolder: String

        public var accountNo: String

        public var branchName: String

        public enum CodingKeys: String, CodingKey {
            case ifscCode = "ifsc_code"

            case bankName = "bank_name"

            case accountHolder = "account_holder"

            case accountNo = "account_no"

            case branchName = "branch_name"
        }

        public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
            self.ifscCode = ifscCode

            self.bankName = bankName

            self.accountHolder = accountHolder

            self.accountNo = accountNo

            self.branchName = branchName
        }

        public func duplicate() -> BankDetailsForOTP {
            let dict = self.dictionary!
            let copy = BankDetailsForOTP(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            branchName = try container.decode(String.self, forKey: .branchName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
        }
    }

    /*
         Model: AddBeneficiaryDetailsOTPRequest
         Used By: Payment
     */
    class AddBeneficiaryDetailsOTPRequest: Codable {
        public var details: BankDetailsForOTP

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case details

            case orderId = "order_id"
        }

        public init(details: BankDetailsForOTP, orderId: String) {
            self.details = details

            self.orderId = orderId
        }

        public func duplicate() -> AddBeneficiaryDetailsOTPRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryDetailsOTPRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            details = try container.decode(BankDetailsForOTP.self, forKey: .details)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
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
        public var requestId: String

        public var success: Bool?

        public var isVerifiedFlag: String

        public enum CodingKeys: String, CodingKey {
            case requestId = "request_id"

            case success

            case isVerifiedFlag = "is_verified_flag"
        }

        public init(isVerifiedFlag: String, requestId: String, success: Bool?) {
            self.requestId = requestId

            self.success = success

            self.isVerifiedFlag = isVerifiedFlag
        }

        public func duplicate() -> WalletOtpResponse {
            let dict = self.dictionary!
            let copy = WalletOtpResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            requestId = try container.decode(String.self, forKey: .requestId)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
        }
    }

    /*
         Model: SetDefaultBeneficiaryRequest
         Used By: Payment
     */
    class SetDefaultBeneficiaryRequest: Codable {
        public var orderId: String

        public var beneficiaryId: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case beneficiaryId = "beneficiary_id"
        }

        public init(beneficiaryId: String, orderId: String) {
            self.orderId = orderId

            self.beneficiaryId = beneficiaryId
        }

        public func duplicate() -> SetDefaultBeneficiaryRequest {
            let dict = self.dictionary!
            let copy = SetDefaultBeneficiaryRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
        }
    }

    /*
         Model: SetDefaultBeneficiaryResponse
         Used By: Payment
     */
    class SetDefaultBeneficiaryResponse: Codable {
        public var success: Bool?

        public var isBeneficiarySet: Bool

        public enum CodingKeys: String, CodingKey {
            case success

            case isBeneficiarySet = "is_beneficiary_set"
        }

        public init(isBeneficiarySet: Bool, success: Bool?) {
            self.success = success

            self.isBeneficiarySet = isBeneficiarySet
        }

        public func duplicate() -> SetDefaultBeneficiaryResponse {
            let dict = self.dictionary!
            let copy = SetDefaultBeneficiaryResponse(dictionary: dict)!
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

            isBeneficiarySet = try container.decode(Bool.self, forKey: .isBeneficiarySet)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isBeneficiarySet, forKey: .isBeneficiarySet)
        }
    }
}
