

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var unitPrice: Double

        public var sku: String

        public var sellerIdentifier: String

        public var discount: Double

        public var companyId: Int

        public var avlQty: Int

        public var priceMarked: Double

        public var itemSize: String

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var amountPaid: Double

        public var modifiedOn: String

        public var priceEffective: Double

        public var storeId: Int

        public var transferPrice: Int

        public var id: String

        public var quantity: Int

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case identifier

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case unitPrice = "unit_price"

            case sku

            case sellerIdentifier = "seller_identifier"

            case discount

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case id = "_id"

            case quantity

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.unitPrice = unitPrice

            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.companyId = companyId

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.id = id

            self.quantity = quantity

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            id = try container.decode(String.self, forKey: .id)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var unitPrice: Double

        public var sku: String

        public var sellerIdentifier: String

        public var discount: Double

        public var companyId: Int

        public var avlQty: Int

        public var priceMarked: Double

        public var itemSize: String

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var amountPaid: Double

        public var modifiedOn: String

        public var priceEffective: Double

        public var storeId: Int

        public var transferPrice: Int

        public var id: String

        public var quantity: Int

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case identifier

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case unitPrice = "unit_price"

            case sku

            case sellerIdentifier = "seller_identifier"

            case discount

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case id = "_id"

            case quantity

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.unitPrice = unitPrice

            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.companyId = companyId

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.id = id

            self.quantity = quantity

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            id = try container.decode(String.self, forKey: .id)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
