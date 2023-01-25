

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var deliveryCharge: Double

        public var itemSize: String

        public var amountPaid: Double

        public var avlQty: Int

        public var unitPrice: Double

        public var discount: Double

        public var companyId: Int

        public var priceMarked: Double

        public var sku: String

        public var quantity: Int

        public var affiliateStoreId: String

        public var id: String

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var sellerIdentifier: String

        public var transferPrice: Int

        public var modifiedOn: String

        public var identifier: [String: Any]

        public var priceEffective: Double

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case discount

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case sku

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case identifier

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.discount = discount

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.sku = sku

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.identifier = identifier

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}
