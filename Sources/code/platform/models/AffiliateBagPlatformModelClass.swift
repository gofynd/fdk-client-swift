

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var modifiedOn: String

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var priceMarked: Double

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var discount: Double

        public var sku: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var storeId: Int

        public var itemId: Int

        public var companyId: Int

        public var itemSize: String

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case id = "_id"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case discount

            case sku

            case identifier

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case storeId = "store_id"

            case itemId = "item_id"

            case companyId = "company_id"

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.id = id

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.discount = discount

            self.sku = sku

            self.identifier = identifier

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.storeId = storeId

            self.itemId = itemId

            self.companyId = companyId

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}
