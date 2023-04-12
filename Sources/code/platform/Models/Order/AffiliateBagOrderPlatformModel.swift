

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public var discount: Double

        public var avlQty: Int

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var id: String

        public var priceEffective: Double

        public var itemId: Int

        public var modifiedOn: String

        public var priceMarked: Double

        public var transferPrice: Int

        public var amountPaid: Double

        public var itemSize: String

        public var companyId: Int

        public var identifier: [String: Any]

        public var storeId: Int

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case sku

            case affiliateMeta = "affiliate_meta"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case companyId = "company_id"

            case identifier

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.companyId = companyId

            self.identifier = identifier

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public var discount: Double

        public var avlQty: Int

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var id: String

        public var priceEffective: Double

        public var itemId: Int

        public var modifiedOn: String

        public var priceMarked: Double

        public var transferPrice: Int

        public var amountPaid: Double

        public var itemSize: String

        public var companyId: Int

        public var identifier: [String: Any]

        public var storeId: Int

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case sku

            case affiliateMeta = "affiliate_meta"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case companyId = "company_id"

            case identifier

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.companyId = companyId

            self.identifier = identifier

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}
