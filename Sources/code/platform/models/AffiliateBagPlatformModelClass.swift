

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var priceMarked: Double

        public var storeId: Int

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var itemSize: String

        public var amountPaid: Double

        public var unitPrice: Double

        public var modifiedOn: String

        public var transferPrice: Int

        public var sku: String

        public var avlQty: Int

        public var priceEffective: Double

        public var quantity: Int

        public var affiliateStoreId: String

        public var discount: Double

        public var id: String

        public var deliveryCharge: Double

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case sku

            case avlQty = "avl_qty"

            case priceEffective = "price_effective"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case id = "_id"

            case deliveryCharge = "delivery_charge"

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.sku = sku

            self.avlQty = avlQty

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.id = id

            self.deliveryCharge = deliveryCharge

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
