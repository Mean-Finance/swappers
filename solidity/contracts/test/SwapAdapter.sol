// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.8.7 <0.9.0;

import '../SwapAdapter.sol';

contract SwapAdapterMock is SwapAdapter {
  constructor(address _swapperRegistry) SwapAdapter(_swapperRegistry) {}

  function internalTakeFromMsgSender(IERC20 _token, uint256 _amount) external {
    _takeFromMsgSender(_token, _amount);
  }

  function internalMaxApproveSpenderIfNeeded(
    IERC20 _token,
    address _spender,
    uint256 _minAllowance
  ) external {
    _maxApproveSpenderIfNeeded(_token, _spender, _minAllowance);
  }

  function internalExecuteSwap(address _swapper, bytes calldata _swapData) external payable {
    _executeSwap(_swapper, _swapData);
  }

  function internalSendBalanceToMsgSender(IERC20 _token) external {
    _sendBalanceToMsgSender(_token);
  }
}