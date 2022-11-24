

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var affiliateMeta: [String: Any]

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var amountPaid: Double

        public var itemId: Int

        public var itemSize: String

        public var storeId: Int

        public var priceMarked: Double

        public var quantity: Int

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var companyId: Int

        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public var id: String

        public var discount: Double

        public var hsnCodeId: String

        public var avlQty: Int

        public var modifiedOn: String

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case sku

            case affiliateMeta = "affiliate_meta"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case itemSize = "item_size"

            case storeId = "store_id"

            case priceMarked = "price_marked"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case identifier

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case discount

            case hsnCodeId = "hsn_code_id"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.itemSize = itemSize

            self.storeId = storeId

            self.priceMarked = priceMarked

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}
