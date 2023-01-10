

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var deliveryCharge: Double

        public var sku: String

        public var discount: Double

        public var id: String

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var companyId: Int

        public var priceEffective: Double

        public var hsnCodeId: String

        public var itemSize: String

        public var unitPrice: Double

        public var storeId: Int

        public var itemId: Int

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case deliveryCharge = "delivery_charge"

            case sku

            case discount

            case id = "_id"

            case identifier

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.discount = discount

            self.id = id

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}
